.class public Lcom/android/internal/telephony/cdma/utk/UtkService;
.super Landroid/os/Handler;
.source "UtkService.java"

# interfaces
.implements Lcom/android/internal/telephony/cdma/utk/AppInterface;
.implements Lcom/mediatek/internal/telephony/cdma/IUtkService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;,
        Lcom/android/internal/telephony/cdma/utk/UtkService$1;,
        Lcom/android/internal/telephony/cdma/utk/UtkService$2;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues:[I = null

.field private static synthetic -com_android_internal_telephony_cdma_utk_ResultCodeSwitchesValues:[I = null

.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field public static final ENVELOPE_MENU_SELECTION:I = 0xff

.field static final EVENT_LIST_BROWSER_TERMINATION:I = 0x8

.field static final EVENT_LIST_CALL_CONNECTED:I = 0x1

.field static final EVENT_LIST_CALL_DISCONNECTED:I = 0x2

.field static final EVENT_LIST_CARD_READER_STATUS:I = 0x6

.field static final EVENT_LIST_CHANNEL_STATUS:I = 0xa

.field static final EVENT_LIST_DATA_AVAILABLE:I = 0x9

.field static final EVENT_LIST_IDLE_SCREEN_AVAILABLE:I = 0x5

.field static final EVENT_LIST_LANGUAGE_SELECTION:I = 0x7

.field static final EVENT_LIST_LOCATION_STATUS:I = 0x3

.field static final EVENT_LIST_MT_CALL:I = 0x0

.field static final EVENT_LIST_USER_ACTIVITY:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "UtkService"

.field private static final LTE_UTK_DBG:Z = true

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field public static final MSG_ID_CLOSED_CHANNEL:I = 0x17

.field static final MSG_ID_CMD_LOCAL_INFO:I = 0xc

.field static final MSG_ID_EVENT_DOWNLOAD:I = 0x8

.field static final MSG_ID_EVENT_LOCAL_INFO:I = 0xe

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field public static final MSG_ID_GET_CHANNEL_STATUS:I = 0x18

.field static final MSG_ID_ICC_CHANGED:I = 0xb

.field public static final MSG_ID_MENU_INFO:I = 0x1e

.field public static final MSG_ID_OPENED_CHANNEL:I = 0x14

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_RADIO_OFF_OR_UNAVAILABLE:I = 0xf

.field public static final MSG_ID_RECEIVED_DATA:I = 0x16

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_RIL_REFRESH_RESULT:I = 0xd

.field static final MSG_ID_RUIM_READY:I = 0x7

.field public static final MSG_ID_SENT_DATA:I = 0x15

.field static final MSG_ID_SESSION_END:I = 0x1

.field public static final MSG_ID_TIMER_MANAGEMENT_TIMEOUT:I = 0x1a

.field public static final MSG_ID_TIMER_TICK:I = 0x19

.field static final UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

.field public static final UTK_CARD_TYPE_UIM_AND_USIM:I = 0x2

.field public static final UTK_CARD_TYPE_UIM_ONLY:I = 0x1

.field public static final UTK_CARD_TYPE_UNKNOW:I = 0x0

.field static final UTK_DEFAULT:Ljava/lang/String; = "Defualt Message"

.field public static final UTK_ENV:I = 0x2

.field public static final UTK_NPS_ENV:I = 0x4

.field public static final UTK_NPS_TR:I = 0x2

.field public static final UTK_PS_ENV:I = 0x3

.field public static final UTK_PS_TR:I = 0x1

.field static final UTK_TIMER_MAX:I = 0x8

.field private static final UTK_TIMEUPDATE_PERIOD:I = 0x3e8

.field public static final UTK_TR:I = 0x1

.field private static final WP2_LOG_TAG:Ljava/lang/String; = "Wp2UtkService"

.field private static final mEsnTrackUtkMenuSelect:Ljava/lang/String; = "com.android.internal.telephony.cdma.utk.ESN_MENU_SELECTION"

.field private static sActiveInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

.field private static sActiveUtkId:I

.field public static sCdmaPhoneId:I

.field private static sIccRecordsSim1:Lcom/android/internal/telephony/uicc/IccRecords;

.field private static sIccRecordsSim2:Lcom/android/internal/telephony/uicc/IccRecords;

.field private static final sInstanceLock:Ljava/lang/Object;

.field private static sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

.field private static sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

.field private static sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

.field private static sLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field public static sLtePhoneProxyId:I

.field private static sMutliSimType:I

.field public static sQueryMenuFlag:Z

.field private static sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

.field private static sRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

.field private static sUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private static sUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# instance fields
.field private mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

.field private mCatchChannelCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field private mCatchLocalInfoCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field private mEventList:[B

.field private final mIRStateChangeFilter:Landroid/content/IntentFilter;

.field private final mIRStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

.field private mLocationStatusString:Ljava/lang/String;

.field private mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

.field private mPendingRilMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/RilMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private mRilMsgDecoding:Z

.field private final mSIMStateChangeFilter:Landroid/content/IntentFilter;

.field private final mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

.field private mServiceState:I

.field private mSimId:I

.field private mTimerLock:Ljava/lang/Object;

.field private mTimerManagementHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;",
            ">;"
        }
    .end annotation
.end field

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUtkTicker:Ljava/util/Timer;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/cdma/utk/UtkService;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/cdma/utk/UtkService;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    return v0
.end method

.method static synthetic -get2()Lcom/android/internal/telephony/cdma/utk/UtkService;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    return-object v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    return v0
.end method

.method static synthetic -get4()Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    return-object v0
.end method

.method static synthetic -get5()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object v0
.end method

.method private static synthetic -getcom_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->-com_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->-com_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues:[I

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

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_12

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->LOCAL_INFO:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_11

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->MORE_TIME:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_10

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_f

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_e

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->POLL_INTERVAL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_d

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_c

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_b

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_a

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_9

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_8

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_7

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_6

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_5

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_4

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_3

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_2

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_1

    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->TIMER_MANAGEMENT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_0

    :goto_17
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->-com_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues:[I

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

.method private static synthetic -getcom_android_internal_telephony_cdma_utk_ResultCodeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->-com_android_internal_telephony_cdma_utk_ResultCodeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->-com_android_internal_telephony_cdma_utk_ResultCodeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->values()[Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ACCESS_TECH_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_24

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_23

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_22

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_21

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_20

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_NUM_NOT_KNOWN:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1f

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1e

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1d

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->FRAMES_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1c

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1b

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1a

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->MMS_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_19

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->MMS_TEMPORARY:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_18

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->MULTI_CARDS_CMD_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_17

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->NAA_CALL_CONTROL_TEMPORARY:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_16

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_15

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_14

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_13

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_LIMITED_SERVICE:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_11

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_MODIFIED_BY_NAA:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_10

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_NAA_NOT_ACTIVE:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_f

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_TONE_NOT_PLAYED:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_e

    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_d

    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_c

    :goto_18
    :try_start_19
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_b

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_a

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_9

    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->SMS_RP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_8

    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->SS_RETURN_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_7

    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_6

    :goto_1e
    :try_start_1f
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_5

    :goto_1f
    :try_start_20
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->USER_CLEAR_DOWN_CALL:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_4

    :goto_20
    :try_start_21
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_3

    :goto_21
    :try_start_22
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_2

    :goto_22
    :try_start_23
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_1

    :goto_23
    :try_start_24
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->USSD_SS_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_0

    :goto_24
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->-com_android_internal_telephony_cdma_utk_ResultCodeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_24

    :catch_1
    move-exception v1

    goto :goto_23

    :catch_2
    move-exception v1

    goto :goto_22

    :catch_3
    move-exception v1

    goto :goto_21

    :catch_4
    move-exception v1

    goto :goto_20

    :catch_5
    move-exception v1

    goto :goto_1f

    :catch_6
    move-exception v1

    goto :goto_1e

    :catch_7
    move-exception v1

    goto :goto_1d

    :catch_8
    move-exception v1

    goto :goto_1c

    :catch_9
    move-exception v1

    goto :goto_1b

    :catch_a
    move-exception v1

    goto :goto_1a

    :catch_b
    move-exception v1

    goto/16 :goto_19

    :catch_c
    move-exception v1

    goto/16 :goto_18

    :catch_d
    move-exception v1

    goto/16 :goto_17

    :catch_e
    move-exception v1

    goto/16 :goto_16

    :catch_f
    move-exception v1

    goto/16 :goto_15

    :catch_10
    move-exception v1

    goto/16 :goto_14

    :catch_11
    move-exception v1

    goto/16 :goto_13

    :catch_12
    move-exception v1

    goto/16 :goto_12

    :catch_13
    move-exception v1

    goto/16 :goto_11

    :catch_14
    move-exception v1

    goto/16 :goto_10

    :catch_15
    move-exception v1

    goto/16 :goto_f

    :catch_16
    move-exception v1

    goto/16 :goto_e

    :catch_17
    move-exception v1

    goto/16 :goto_d

    :catch_18
    move-exception v1

    goto/16 :goto_c

    :catch_19
    move-exception v1

    goto/16 :goto_b

    :catch_1a
    move-exception v1

    goto/16 :goto_a

    :catch_1b
    move-exception v1

    goto/16 :goto_9

    :catch_1c
    move-exception v1

    goto/16 :goto_8

    :catch_1d
    move-exception v1

    goto/16 :goto_7

    :catch_1e
    move-exception v1

    goto/16 :goto_6

    :catch_1f
    move-exception v1

    goto/16 :goto_5

    :catch_20
    move-exception v1

    goto/16 :goto_4

    :catch_21
    move-exception v1

    goto/16 :goto_3

    :catch_22
    move-exception v1

    goto/16 :goto_2

    :catch_23
    move-exception v1

    goto/16 :goto_1

    :catch_24
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/cdma/utk/UtkService;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    return p1
.end method

.method static synthetic -set1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 0

    sput-object p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/cdma/utk/UtkService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->checkLocationEvent()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 209
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceLock:Ljava/lang/Object;

    .line 228
    sput v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    .line 234
    sput v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sMutliSimType:I

    .line 235
    sput-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 237
    sput-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    .line 248
    sput v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLtePhoneProxyId:I

    .line 249
    sput v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sCdmaPhoneId:I

    .line 250
    sput-boolean v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sQueryMenuFlag:Z

    .line 251
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 319
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 320
    const-string/jumbo v1, "gsm.ril.uicctype"

    aput-object v1, v0, v2

    .line 321
    const-string/jumbo v1, "gsm.ril.uicctype.2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 322
    const-string/jumbo v1, "gsm.ril.uicctype.3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 323
    const-string/jumbo v1, "gsm.ril.uicctype.4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 319
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    .line 196
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 7
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "ca"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p3, "ir"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p6, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 384
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 206
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 215
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 216
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 218
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchLocalInfoCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 221
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchChannelCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 230
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 232
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    .line 238
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 270
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    .line 275
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 279
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 278
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    .line 280
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerLock:Ljava/lang/Object;

    .line 281
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    .line 283
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    .line 284
    iput v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    .line 285
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocationStatusString:Ljava/lang/String;

    .line 331
    new-instance v1, Landroid/content/IntentFilter;

    .line 332
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 331
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    .line 333
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/UtkService$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/utk/UtkService$1;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 351
    new-instance v1, Landroid/content/IntentFilter;

    .line 352
    const-string/jumbo v2, "com.mediatek.intent.action.FINISH_SWITCH_ROAMING_MODE"

    .line 351
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIRStateChangeFilter:Landroid/content/IntentFilter;

    .line 354
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/UtkService$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/utk/UtkService$2;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIRStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 387
    const-string/jumbo v1, "UtkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " ci"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ca "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fh "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 391
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    .line 392
    const-string/jumbo v2, "Service: Input parameters must not be null"

    .line 391
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_1
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 390
    if-eqz p6, :cond_0

    .line 395
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 396
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    .line 398
    invoke-virtual {p6}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    .line 400
    const-string/jumbo v1, "UtkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " UtkService constructor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 403
    invoke-static {p6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getMutliSimType(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sMutliSimType:I

    .line 404
    const-string/jumbo v1, "UtkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " mMutliSimType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->sMutliSimType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-static {p0, p5, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 411
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-static {p4, p0, v1}, Lcom/android/internal/telephony/cdma/utk/BipService;->getInstance(Landroid/content/Context;Landroid/os/Handler;I)Lcom/android/internal/telephony/cdma/utk/BipService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 412
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    .line 413
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 414
    .local v0, "intent":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 419
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 420
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_4

    .line 421
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v2, 0xb

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 422
    const-string/jumbo v1, "mUiccController != null, register for icc change successly"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    if-nez v1, :cond_5

    .line 429
    sput-object p3, Lcom/android/internal/telephony/cdma/utk/UtkService;->sIccRecordsSim1:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 430
    sput-object p2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 431
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0, v6, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 440
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 441
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 442
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 445
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xf

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 447
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 451
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 453
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIRStateChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIRStateChangeFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 456
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->reportUtkServiceIsRunning(Landroid/os/Message;)V

    .line 457
    const-string/jumbo v1, "UtkService v1.9.0 is running"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    return-void

    .line 424
    :cond_4
    const-string/jumbo v1, "mUiccController = null, cant register for icc change"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_5
    sput-object p3, Lcom/android/internal/telephony/cdma/utk/UtkService;->sIccRecordsSim2:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 434
    sput-object p2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 435
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0, v6, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private addTimerManagement(I[B)V
    .locals 4
    .param p1, "timerId"    # I
    .param p2, "bcdData"    # [B

    .prologue
    .line 1830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addTimerManagement id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1832
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;-><init>(Landroid/os/Handler;I[B)V

    .line 1833
    .local v0, "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    monitor-enter v2

    .line 1835
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1829
    return-void

    .line 1833
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static bcdToDigit([B)[B
    .locals 6
    .param p0, "bcd"    # [B

    .prologue
    const/4 v5, 0x0

    .line 1860
    if-nez p0, :cond_0

    .line 1861
    return-object v5

    .line 1863
    :cond_0
    array-length v4, p0

    new-array v0, v4, [B

    .line 1865
    .local v0, "digit":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 1866
    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    int-to-byte v3, v4

    .line 1867
    .local v3, "l":B
    const/16 v4, 0x9

    if-le v3, v4, :cond_1

    .line 1868
    return-object v5

    .line 1870
    :cond_1
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    int-to-byte v1, v4

    .line 1872
    .local v1, "h":B
    mul-int/lit8 v4, v3, 0xa

    add-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1865
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1875
    .end local v1    # "h":B
    .end local v3    # "l":B
    :cond_2
    return-object v0
.end method

.method private broadcastEventlist()V
    .locals 4

    .prologue
    .line 2023
    const/4 v1, 0x0

    .line 2024
    .local v1, "st":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 2025
    .local v1, "st":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "broadcastEventlist mEventList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2026
    if-eqz v1, :cond_0

    .line 2027
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.utk.setup_event_list"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2028
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "PHONE_ID"

    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2029
    const-string/jumbo v2, "UTK_EVENTS"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2030
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2022
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private checkBipEvent()V
    .locals 7

    .prologue
    .line 1993
    const-string/jumbo v5, "checkBipEvent"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1994
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ""

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1996
    .local v2, "mSb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 1997
    .local v4, "st":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1998
    const-string/jumbo v5, "09"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1999
    const-string/jumbo v5, "Bip event data available"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    const-string/jumbo v5, "09"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2002
    :cond_0
    const-string/jumbo v5, "0a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2003
    const-string/jumbo v5, "Bip event channel status"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2004
    const-string/jumbo v5, "0a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2008
    .local v1, "mEvents":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkBipEvent: mEvents = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2009
    const-string/jumbo v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2010
    const/4 v3, 0x0

    .line 2011
    .local v3, "mUtkEvents":[B
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 2012
    .local v3, "mUtkEvents":[B
    if-eqz v3, :cond_2

    .line 2013
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkBipEvent: mUtkEvents = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2014
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.utk.setup_event_list"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2015
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "PHONE_ID"

    iget v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2016
    const-string/jumbo v5, "UTK_EVENTS"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2017
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1992
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "mUtkEvents":[B
    :cond_2
    return-void
.end method

.method private checkLocationEvent()V
    .locals 3

    .prologue
    .line 1983
    const-string/jumbo v1, "checkLocationEvent"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1985
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 1986
    .local v0, "st":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1987
    const-string/jumbo v1, "getUtkLocalInfo"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1988
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getUtkLocalInfo(Landroid/os/Message;)V

    .line 1982
    :cond_0
    return-void
.end method

.method public static digitTobcd([B)[B
    .locals 5
    .param p0, "digit"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1884
    if-nez p0, :cond_0

    .line 1885
    return-object v4

    .line 1887
    :cond_0
    array-length v4, p0

    new-array v0, v4, [B

    .line 1889
    .local v0, "bcd":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 1890
    aget-byte v4, p0, v2

    rem-int/lit8 v4, v4, 0xa

    int-to-byte v3, v4

    .line 1891
    .local v3, "l":B
    aget-byte v4, p0, v2

    div-int/lit8 v4, v4, 0xa

    int-to-byte v1, v4

    .line 1893
    .local v1, "h":B
    shl-int/lit8 v4, v3, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1889
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1896
    .end local v1    # "h":B
    .end local v3    # "l":B
    :cond_1
    return-object v0
.end method

.method private eventDownload(III[BZ)V
    .locals 9
    .param p1, "event"    # I
    .param p2, "sourceId"    # I
    .param p3, "destinationId"    # I
    .param p4, "additionalInfo"    # [B
    .param p5, "oneShot"    # Z

    .prologue
    .line 1045
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1047
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x9

    if-eq v6, p1, :cond_4

    .line 1048
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    array-length v6, v6

    if-nez v6, :cond_1

    .line 1049
    :cond_0
    const-string/jumbo v6, "eventDownload mEventList null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1050
    return-void

    .line 1053
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "eventDownload events="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1054
    const-string/jumbo v7, " current event="

    .line 1053
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 1057
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    aget-byte v6, v6, v3

    if-ne v6, p1, :cond_3

    .line 1058
    if-eqz p5, :cond_2

    .line 1059
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    const/4 v7, 0x0

    aput-byte v7, v6, v3

    .line 1065
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    array-length v6, v6

    if-ne v3, v6, :cond_4

    .line 1066
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "eventDownload not wanted event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1067
    return-void

    .line 1056
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1072
    .end local v3    # "index":I
    :cond_4
    const/16 v6, 0xd6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1075
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1078
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1079
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1080
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1083
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1084
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1085
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1086
    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1089
    if-eqz p4, :cond_5

    .line 1090
    array-length v6, p4

    const/4 v7, 0x0

    invoke-virtual {v0, p4, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1093
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 1096
    .local v5, "rawData":[B
    array-length v6, v5

    add-int/lit8 v4, v6, -0x2

    .line 1097
    .local v4, "len":I
    int-to-byte v6, v4

    const/4 v7, 0x1

    aput-byte v6, v5, v7

    .line 1099
    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1101
    .local v2, "hexString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sending event envelope hexString:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1103
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1104
    sget v6, Lcom/android/internal/telephony/cdma/utk/UtkService;->sMutliSimType:I

    const/4 v7, 0x2

    if-ne v7, v6, :cond_6

    .line 1105
    const/4 v6, 0x2

    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getSvlteUtkCommandType(II)I

    move-result v1

    .line 1106
    .local v1, "cmdType":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UTK LTE: event download through lte ril arbitrator, event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1107
    const-string/jumbo v7, " cmdType = "

    .line 1106
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1108
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    sget v7, Lcom/android/internal/telephony/cdma/utk/UtkService;->sMutliSimType:I

    const/4 v8, 0x0

    invoke-interface {v6, v2, v8, v1, v7}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;II)V

    .line 1043
    .end local v1    # "cmdType":I
    :goto_1
    return-void

    .line 1110
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1
.end method

.method public static getActiveUtkId()I
    .locals 3

    .prologue
    .line 2271
    const-string/jumbo v0, "UtkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "return active utk id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    sget v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/cdma/utk/AppInterface;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1224
    invoke-static {v0, v0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/cdma/utk/UtkService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/android/internal/telephony/cdma/utk/AppInterface;
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 1234
    if-nez p0, :cond_0

    .line 1235
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    return-object v0

    .line 1236
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    .line 1237
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    return-object v0

    .line 1239
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/cdma/utk/UtkService;
    .locals 11
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1125
    const-string/jumbo v1, "UtkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " getInstance ic "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const/4 v2, 0x0

    .line 1128
    .local v2, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v5, 0x0

    .line 1129
    .local v5, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/4 v3, 0x0

    .line 1131
    .local v3, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v7, -0x1

    .line 1133
    .local v7, "tempPhoneId":I
    if-eqz p2, :cond_0

    .line 1138
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 1139
    .local v2, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_0

    .line 1140
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v5

    .line 1141
    .local v5, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 1143
    .local v3, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v7

    .line 1144
    const-string/jumbo v1, "Wp2UtkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " tempPhoneId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    .end local v2    # "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v5    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_0
    sget-object v8, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1148
    if-nez v7, :cond_3

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    if-nez v1, :cond_3

    .line 1150
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_8

    .line 1152
    :cond_2
    const-string/jumbo v1, "UtkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " getInstance ca "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " ir "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " fh "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 1154
    return-object v9

    .line 1149
    :cond_3
    if-ne v10, v7, :cond_4

    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    if-eqz v1, :cond_1

    .line 1176
    :cond_4
    if-nez v7, :cond_b

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    if-eqz v1, :cond_b

    .line 1177
    if-eqz v2, :cond_6

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v2, :cond_6

    .line 1178
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_5

    .line 1179
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 1181
    :cond_5
    sput-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1182
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const/4 v6, 0x7

    const/4 v9, 0x0

    invoke-virtual {v1, v4, v6, v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1183
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string/jumbo v4, "sInstanceSim1 reinitialize with new ca"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1185
    :cond_6
    if-eqz v3, :cond_7

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sIccRecordsSim1:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v1, v3, :cond_7

    .line 1186
    sput-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->sIccRecordsSim1:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1187
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string/jumbo v4, "sInstanceSim1 reinitialize with new ir"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1189
    :cond_7
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string/jumbo v4, "Return current sInstanceSim1"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1190
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    sput-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 1191
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    .line 1192
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    return-object v1

    .line 1150
    :cond_8
    if-eqz p2, :cond_2

    .line 1151
    if-eqz v2, :cond_2

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    const/4 v1, -0x1

    if-eq v7, v1, :cond_2

    .line 1159
    const/4 v0, 0x0

    .line 1160
    .local v0, "tempInstance":Lcom/android/internal/telephony/cdma/utk/UtkService;
    :try_start_2
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/UtkService;

    .end local v0    # "tempInstance":Lcom/android/internal/telephony/cdma/utk/UtkService;
    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccCard;)V

    .line 1161
    .local v0, "tempInstance":Lcom/android/internal/telephony/cdma/utk/UtkService;
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 1162
    if-nez v7, :cond_9

    .line 1163
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 1164
    sput v7, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    .line 1165
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "new sInstance"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1166
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    return-object v1

    .line 1167
    :cond_9
    if-ne v10, v7, :cond_a

    .line 1168
    :try_start_3
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 1169
    sput v7, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    .line 1170
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "new sInstance"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1171
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v8

    return-object v1

    .line 1173
    :cond_a
    :try_start_4
    const-string/jumbo v1, "Wp2UtkService"

    const-string/jumbo v4, "Invalid phone ID and return null instance"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v8

    .line 1174
    return-object v9

    .line 1193
    .end local v0    # "tempInstance":Lcom/android/internal/telephony/cdma/utk/UtkService;
    :cond_b
    if-ne v10, v7, :cond_f

    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    if-eqz v1, :cond_f

    .line 1194
    if-eqz v2, :cond_d

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v2, :cond_d

    .line 1195
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_c

    .line 1196
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 1198
    :cond_c
    sput-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1199
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const/4 v6, 0x7

    const/4 v9, 0x0

    invoke-virtual {v1, v4, v6, v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1200
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string/jumbo v4, "sInstanceSim2 reinitialize with new ca"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1202
    :cond_d
    if-eqz v3, :cond_e

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sIccRecordsSim2:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v1, v3, :cond_e

    .line 1203
    sput-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->sIccRecordsSim2:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1204
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string/jumbo v4, "sInstanceSim2 reinitialize with new ir"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1206
    :cond_e
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string/jumbo v4, "Return current sInstanceSim2"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1207
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    sput-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 1208
    const/4 v1, 0x1

    sput v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    .line 1209
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v8

    return-object v1

    .line 1211
    :cond_f
    :try_start_6
    const-string/jumbo v1, "Wp2UtkService"

    const-string/jumbo v4, " Return active sInstance"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const-string/jumbo v1, "Wp2UtkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " sActiveUtkId is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v8

    return-object v1

    .line 1147
    :catchall_0
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method private getModelMessage()Ljava/lang/String;
    .locals 12

    .prologue
    .line 2288
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2289
    .local v0, "data":Ljava/lang/StringBuffer;
    const/4 v10, 0x1

    new-array v2, v10, [B

    .line 2290
    .local v2, "mCharEncoding":[B
    const/4 v10, 0x1

    new-array v3, v10, [B

    .line 2291
    .local v3, "mLangIndicator":[B
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2292
    .local v6, "mModel":Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2293
    .local v4, "mManufacturer":Ljava/lang/String;
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2294
    .local v8, "mSwVersion":Ljava/lang/String;
    const/16 v7, 0x20

    .line 2295
    .local v7, "mModelMaxLength":I
    const/16 v5, 0x20

    .line 2296
    .local v5, "mManufacturerMaxLength":I
    const/16 v9, 0x3c

    .line 2298
    .local v9, "mSwVersionMaxLength":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getModelMessage mModel = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2299
    const-string/jumbo v11, " mManufacturer = "

    .line 2298
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2300
    const-string/jumbo v11, " mSwVersion = "

    .line 2298
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2302
    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-byte v10, v2, v11

    .line 2303
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2304
    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-byte v10, v3, v11

    .line 2305
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2307
    const/16 v10, 0x20

    .line 2306
    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getformattedCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2308
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x20

    if-ge v10, v11, :cond_0

    .line 2309
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v10, v10, 0x20

    if-ge v1, v10, :cond_0

    .line 2310
    const-string/jumbo v10, "FF"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2314
    .end local v1    # "i":I
    :cond_0
    const/16 v10, 0x20

    .line 2313
    invoke-direct {p0, v4, v10}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getformattedCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2315
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x20

    if-ge v10, v11, :cond_1

    .line 2316
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v10, v10, 0x20

    if-ge v1, v10, :cond_1

    .line 2317
    const-string/jumbo v10, "FF"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2316
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2321
    .end local v1    # "i":I
    :cond_1
    const/16 v10, 0x3c

    .line 2320
    invoke-direct {p0, v8, v10}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getformattedCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2322
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x3c

    if-ge v10, v11, :cond_2

    .line 2323
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v10, v10, 0x3c

    if-ge v1, v10, :cond_2

    .line 2324
    const-string/jumbo v10, "FF"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2323
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2327
    .end local v1    # "i":I
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getModelMessage data = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2328
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method private static getMutliSimType(Lcom/android/internal/telephony/uicc/UiccCard;)I
    .locals 10
    .param p0, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2094
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 2096
    .local v0, "appType1":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 2098
    .local v1, "appType2":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    const/4 v2, 0x0

    .line 2099
    .local v2, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v3, 0x0

    .line 2101
    .local v3, "ca2":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 2102
    .local v2, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 2104
    .local v3, "ca2":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_0

    .line 2105
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    .line 2106
    const-string/jumbo v4, "UtkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " appType1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    :cond_0
    if-eqz v3, :cond_1

    .line 2109
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    .line 2110
    const-string/jumbo v4, "UtkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " appType2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v4, v0, :cond_2

    .line 2114
    return v7

    .line 2115
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v4, v0, :cond_3

    .line 2116
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v4, v0, :cond_7

    .line 2117
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v4, v1, :cond_4

    .line 2118
    return v8

    .line 2119
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v4, v1, :cond_5

    .line 2120
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v4, v1, :cond_6

    .line 2121
    :cond_5
    return v9

    .line 2123
    :cond_6
    return v7

    .line 2126
    :cond_7
    return v7
.end method

.method private getRecodeLocalinfo()Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    .locals 7

    .prologue
    .line 1753
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;-><init>()V

    .line 1755
    .local v0, "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->copyFrom(Lcom/android/internal/telephony/cdma/utk/LocalInfo;)V

    .line 1757
    const/16 v4, 0xa

    new-array v3, v4, [I

    .local v3, "myMap":[I
    fill-array-data v3, :array_0

    .line 1758
    iget v1, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1759
    .local v1, "mcc":I
    iget v2, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1761
    .local v2, "mnc":I
    const-string/jumbo v4, "LocalInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mLocalInfo MCC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " IMSI:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    const/16 v4, 0x3e8

    if-ge v1, v4, :cond_0

    .line 1764
    div-int/lit8 v4, v1, 0x64

    aget v4, v3, v4

    mul-int/lit8 v4, v4, 0x64

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1765
    rem-int/lit8 v1, v1, 0x64

    .line 1766
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    div-int/lit8 v5, v1, 0xa

    aget v5, v3, v5

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1767
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    rem-int/lit8 v5, v1, 0xa

    aget v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1778
    :goto_0
    const/16 v4, 0x64

    if-ge v2, v4, :cond_1

    .line 1779
    div-int/lit8 v4, v2, 0xa

    aget v4, v3, v4

    mul-int/lit8 v4, v4, 0xa

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1780
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    rem-int/lit8 v5, v2, 0xa

    aget v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1788
    :goto_1
    return-object v0

    .line 1770
    :cond_0
    div-int/lit16 v4, v1, 0x3e8

    aget v4, v3, v4

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1771
    rem-int/lit16 v1, v1, 0x3e8

    .line 1772
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    div-int/lit8 v5, v1, 0x64

    aget v5, v3, v5

    mul-int/lit8 v5, v5, 0x64

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1773
    rem-int/lit8 v1, v1, 0x64

    .line 1774
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    div-int/lit8 v5, v1, 0xa

    aget v5, v3, v5

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1775
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    rem-int/lit8 v5, v1, 0xa

    aget v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    goto :goto_0

    .line 1782
    :cond_1
    div-int/lit8 v4, v2, 0x64

    aget v4, v3, v4

    mul-int/lit8 v4, v4, 0x64

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1783
    rem-int/lit8 v2, v2, 0x64

    .line 1784
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    div-int/lit8 v5, v2, 0xa

    aget v5, v3, v5

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1785
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    rem-int/lit8 v5, v2, 0xa

    aget v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    goto :goto_1

    .line 1757
    nop

    :array_0
    .array-data 4
        0x9
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method private getSvlteUtkCommandType(II)I
    .locals 4
    .param p1, "res"    # I
    .param p2, "typeOfCmd"    # I

    .prologue
    .line 2182
    const/4 v1, 0x0

    .line 2183
    .local v1, "utkCmdType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UTK LTE: res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " typeOfCmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2185
    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    .line 2186
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v0

    .line 2187
    .local v0, "cmdType":Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getUtkTrType(Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;)I

    move-result v1

    .line 2194
    .end local v0    # "cmdType":Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UTK LTE: utkCmdType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2195
    return v1

    .line 2188
    :cond_0
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 2189
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getUtkEnvType(I)I

    move-result v1

    goto :goto_0

    .line 2191
    :cond_1
    const-string/jumbo v2, "UTK LTE: inValid commands type"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTimerManagement(I)Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    .locals 3
    .param p1, "timerId"    # I

    .prologue
    .line 1849
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    monitor-enter v1

    .line 1850
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1849
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUtkEnvType(I)I
    .locals 5
    .param p1, "env"    # I

    .prologue
    .line 2158
    const/4 v1, 0x0

    .line 2161
    .local v1, "isPSCmd":Z
    const/16 v3, 0x9

    .line 2162
    const/16 v4, 0xa

    .line 2160
    filled-new-array {v3, v4}, [I

    move-result-object v2

    .line 2165
    .local v2, "mPSEnvCmdTable":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UTK LTE: env = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 2168
    aget v3, v2, v0

    if-ne p1, v3, :cond_1

    .line 2169
    const/4 v1, 0x1

    .line 2174
    :cond_0
    if-eqz v1, :cond_2

    .line 2175
    const/4 v3, 0x3

    return v3

    .line 2167
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2177
    :cond_2
    const/4 v3, 0x4

    return v3
.end method

.method private getUtkTrType(Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;)I
    .locals 7
    .param p1, "cmdType"    # Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2131
    const/4 v1, 0x0

    .line 2133
    .local v1, "isPSCmd":Z
    const/4 v3, 0x5

    new-array v2, v3, [Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 2134
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2135
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    aput-object v3, v2, v5

    .line 2136
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    aput-object v3, v2, v6

    .line 2137
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 2138
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 2141
    .local v2, "mPsCmdTable":[Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UTK LTE: cmdType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 2144
    aget-object v3, v2, v0

    if-ne p1, v3, :cond_1

    .line 2145
    const/4 v1, 0x1

    .line 2150
    :cond_0
    if-eqz v1, :cond_2

    .line 2151
    return v5

    .line 2143
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2153
    :cond_2
    return v6
.end method

.method private getformattedCode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "max"    # I

    .prologue
    const/4 v0, 0x0

    .line 2276
    if-eqz p1, :cond_1

    .line 2277
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 2278
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2280
    :cond_0
    return-object p1

    .line 2283
    :cond_1
    return-object v0
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
    .locals 10
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 1647
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->validateResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1648
    const-string/jumbo v0, "handleCmdResponse:validateResponse"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1649
    return-void

    .line 1651
    :cond_0
    const/4 v5, 0x0

    .line 1652
    .local v5, "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    const/4 v6, 0x0

    .line 1653
    .local v6, "helpRequired":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-result-object v1

    .line 1654
    .local v1, "cmdDet":Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCmdResponse:resMsg.resCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1655
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/UtkService;->-getcom_android_internal_telephony_cdma_utk_ResultCodeSwitchesValues()[I

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1746
    return-void

    .line 1657
    :pswitch_0
    const/4 v6, 0x1

    .line 1669
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCmdResponse cmd = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1670
    iget v2, v1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v2

    .line 1669
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1671
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/UtkService;->-getcom_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v0

    iget v2, v1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    sparse-switch v0, :sswitch_data_0

    .line 1748
    .end local v5    # "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    :cond_1
    :goto_0
    :sswitch_0
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1749
    iput-object v9, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 1636
    return-void

    .line 1673
    .restart local v5    # "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    :sswitch_1
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v0, v2, :cond_2

    const/4 v6, 0x1

    .line 1674
    :goto_1
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersMenuSelection:I

    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendMenuSelection(IZ)V

    .line 1675
    return-void

    .line 1673
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 1677
    :sswitch_2
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/SelectItemResponseData;

    .end local v5    # "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersMenuSelection:I

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/utk/SelectItemResponseData;-><init>(I)V

    .line 1678
    .local v5, "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    goto :goto_0

    .line 1681
    .local v5, "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geInput()Lcom/android/internal/telephony/cdma/utk/Input;

    move-result-object v7

    .line 1682
    .local v7, "input":Lcom/android/internal/telephony/cdma/utk/Input;
    iget-boolean v0, v7, Lcom/android/internal/telephony/cdma/utk/Input;->yesNo:Z

    if-nez v0, :cond_3

    .line 1685
    if-nez v6, :cond_1

    .line 1686
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;

    .end local v5    # "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersInput:Ljava/lang/String;

    .line 1687
    iget-boolean v2, v7, Lcom/android/internal/telephony/cdma/utk/Input;->ucs2:Z

    iget-boolean v4, v7, Lcom/android/internal/telephony/cdma/utk/Input;->packed:Z

    .line 1686
    invoke-direct {v5, v0, v2, v4}, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .local v5, "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    goto :goto_0

    .line 1690
    .local v5, "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;

    .line 1691
    .end local v5    # "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    iget-boolean v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersYesNoSelection:Z

    .line 1690
    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;-><init>(Z)V

    .local v5, "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    goto :goto_0

    .line 1698
    .end local v7    # "input":Lcom/android/internal/telephony/cdma/utk/Input;
    .local v5, "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    invoke-interface {v0, v2, v9}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromUim(ZLandroid/os/Message;)V

    .line 1702
    iput-object v9, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 1703
    return-void

    .line 1706
    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1707
    const-string/jumbo v2, " usersConfirm:"

    .line 1706
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1707
    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    .line 1706
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1709
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v0, v2, :cond_1

    .line 1710
    iget-boolean v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    if-eqz v0, :cond_7

    .line 1711
    const/4 v8, 0x0

    .line 1712
    .local v8, "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v0, :cond_4

    .line 1713
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    .line 1714
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v2

    .line 1713
    if-eq v0, v2, :cond_6

    .line 1715
    :cond_4
    const-string/jumbo v0, "mCurrntCmd is null , and use mCatchChannelCmd"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1716
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchChannelCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-nez v0, :cond_5

    .line 1717
    const-string/jumbo v0, "mCurrntCmd is null , and mCatchChannelCmd is null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1719
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    goto/16 :goto_0

    .line 1722
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchChannelCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getOpenChannelSettings()Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-result-object v8

    .line 1727
    .local v8, "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/utk/BipService;->openChannel(Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;)V

    .line 1728
    return-void

    .line 1724
    .local v8, "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getOpenChannelSettings()Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-result-object v8

    .local v8, "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    goto :goto_2

    .line 1730
    .end local v8    # "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 1731
    iput-object v9, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchChannelCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1743
    :pswitch_2
    const/4 v5, 0x0

    .line 1744
    goto/16 :goto_0

    .line 1655
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1671
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_3
        0x5 -> :sswitch_3
        0x6 -> :sswitch_0
        0x9 -> :sswitch_5
        0xe -> :sswitch_2
        0x14 -> :sswitch_4
        0x17 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleEventDownload(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
    .locals 6
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    .prologue
    .line 1793
    iget v1, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->event:I

    iget v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->sourceId:I

    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->destinationId:I

    .line 1794
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->additionalInfo:[B

    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->oneShot:Z

    move-object v0, p0

    .line 1793
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->eventDownload(III[BZ)V

    .line 1792
    return-void
.end method

.method private handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V
    .locals 30
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .prologue
    .line 659
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->getCommandType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    new-instance v12, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    .line 663
    .local v12, "cmdMsg":Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleProactiveCommand "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->getCommandType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 665
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/UtkService;->-getcom_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->getCommandType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 860
    const-string/jumbo v4, "Unsupported command"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 861
    return-void

    .line 667
    :pswitch_0
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getMenu()Lcom/android/internal/telephony/cdma/utk/Menu;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkService;->removeMenu(Lcom/android/internal/telephony/cdma/utk/Menu;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 668
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 672
    :goto_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 673
    const/4 v9, 0x0

    move-object/from16 v4, p0

    .line 672
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 863
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :cond_0
    :goto_1
    :pswitch_1
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 864
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.utk.command"

    invoke-direct {v14, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    .local v14, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "UTK CMD"

    invoke-virtual {v14, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 866
    const-string/jumbo v4, "PHONE_ID"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 658
    return-void

    .line 670
    .end local v14    # "intent":Landroid/content/Intent;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :cond_1
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto :goto_0

    .line 678
    :pswitch_2
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    if-nez v4, :cond_0

    .line 679
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    .line 680
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    .line 679
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_1

    .line 686
    :pswitch_3
    const-string/jumbo v4, "UtkService handleProactiveCommand Do refresh"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    const/16 v26, 0x1

    .line 688
    .local v26, "type":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 689
    const/16 v26, 0x1

    .line 698
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move/from16 v0, v26

    invoke-interface {v4, v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestUtkRefresh(ILandroid/os/Message;)V

    .line 701
    new-instance v19, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 702
    .local v19, "rsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 703
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    if-nez v4, :cond_7

    sget-object v17, Lcom/android/internal/telephony/cdma/utk/UtkService;->sIccRecordsSim1:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 704
    .local v17, "mIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_3
    const/16 v4, 0x1f

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 705
    .local v16, "m":Landroid/os/Message;
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 706
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    .line 708
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    goto/16 :goto_1

    .line 690
    .end local v16    # "m":Landroid/os/Message;
    .end local v17    # "mIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v19    # "rsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 691
    const/16 v26, 0x2

    goto :goto_2

    .line 692
    :cond_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 693
    const/16 v26, 0x3

    goto :goto_2

    .line 694
    :cond_5
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    if-eqz v4, :cond_6

    .line 695
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 696
    :cond_6
    const/16 v26, 0x4

    goto :goto_2

    .line 703
    .restart local v19    # "rsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_7
    sget-object v17, Lcom/android/internal/telephony/cdma/utk/UtkService;->sIccRecordsSim2:Lcom/android/internal/telephony/uicc/IccRecords;

    .restart local v17    # "mIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    goto :goto_3

    .line 715
    .end local v17    # "mIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v19    # "rsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    .end local v26    # "type":I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    .line 716
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    .line 715
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_1

    .line 731
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    .line 732
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    .line 731
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 735
    return-void

    .line 737
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    if-eqz v4, :cond_8

    .line 738
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_9

    .line 739
    :cond_8
    const-string/jumbo v4, "Local information get AT data"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getUtkLocalInfo(Landroid/os/Message;)V

    .line 741
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 742
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchLocalInfoCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 749
    :goto_4
    return-void

    .line 744
    :cond_9
    const-string/jumbo v4, "handleCmdResponse Local info"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 745
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 746
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-direct {v9, v4, v7}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;-><init>(ILcom/android/internal/telephony/cdma/utk/LocalInfo;)V

    .line 745
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 747
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto :goto_4

    :pswitch_7
    move-object/from16 v4, p1

    .line 753
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;

    iget v0, v4, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;->timeUnit:I

    move/from16 v23, v0

    .local v23, "timeUnit":I
    move-object/from16 v4, p1

    .line 754
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;

    iget v0, v4, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;->timeInterval:I

    move/from16 v22, v0

    .line 755
    .local v22, "timeInterval":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " timeUnit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " timeInterval="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 758
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/PollIntervalResponseData;

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-direct {v9, v0, v1}, Lcom/android/internal/telephony/cdma/utk/PollIntervalResponseData;-><init>(II)V

    .line 757
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 759
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 760
    return-void

    .end local v22    # "timeInterval":I
    .end local v23    # "timeUnit":I
    :pswitch_8
    move-object/from16 v4, p1

    .line 762
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;

    iget v0, v4, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->timerId:I

    move/from16 v25, v0

    .local v25, "timerId":I
    move-object/from16 v4, p1

    .line 763
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;

    iget v0, v4, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->timerAction:I

    move/from16 v24, v0

    .local v24, "timerAction":I
    move-object/from16 v4, p1

    .line 764
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;

    iget-object v10, v4, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->dataRaw:[B

    .line 766
    .local v10, "bcdData":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " timerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " timerAction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 767
    const-string/jumbo v5, " bcdData="

    .line 766
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 767
    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 766
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    if-nez v24, :cond_b

    .line 770
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->startUtkTimer()V

    .line 771
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v10}, Lcom/android/internal/telephony/cdma/utk/UtkService;->addTimerManagement(I[B)V

    .line 773
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 774
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;

    move/from16 v0, v25

    invoke-direct {v9, v0}, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;-><init>(I)V

    .line 773
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 800
    :cond_a
    :goto_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 801
    return-void

    .line 775
    :cond_b
    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_d

    .line 776
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getTimerManagement(I)Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;

    move-result-object v21

    .line 777
    .local v21, "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    if-eqz v21, :cond_c

    .line 778
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 779
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->getRemaining()J

    move-result-wide v28

    move/from16 v0, v25

    move-wide/from16 v1, v28

    invoke-direct {v9, v0, v1, v2}, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;-><init>(IJ)V

    .line 778
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 780
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->removeTimerManagement(I)V

    goto :goto_5

    .line 782
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " timermanagement "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 785
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    .line 784
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_5

    .line 787
    .end local v21    # "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    :cond_d
    const/4 v4, 0x2

    move/from16 v0, v24

    if-ne v0, v4, :cond_a

    .line 788
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getTimerManagement(I)Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;

    move-result-object v21

    .line 790
    .restart local v21    # "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    if-eqz v21, :cond_e

    .line 791
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 792
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->getRemaining()J

    move-result-wide v28

    move/from16 v0, v25

    move-wide/from16 v1, v28

    invoke-direct {v9, v0, v1, v2}, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;-><init>(IJ)V

    .line 791
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_5

    .line 794
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " timermanagement "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 797
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    .line 796
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_5

    .end local v10    # "bcdData":[B
    .end local v21    # "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    .end local v24    # "timerAction":I
    .end local v25    # "timerId":I
    :pswitch_9
    move-object/from16 v4, p1

    .line 803
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;->eventList:[B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    .line 804
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " set mEventList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 807
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->checkLocationEvent()V

    .line 808
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 809
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->checkBipEvent()V

    .line 812
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v4, :cond_10

    .line 813
    const-string/jumbo v4, " SET_UP_EVENT_LIST: mCurrntCmd != null"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    :cond_10
    return-void

    .line 817
    :pswitch_a
    const-string/jumbo v4, " OPEN_CHANNEL: cache this cmd"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 818
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchChannelCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v4, p1

    .line 823
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;

    iget v11, v4, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;->chId:I

    .line 826
    .local v11, "chId":I
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;->isListen:Z

    .line 827
    .local v15, "listen":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v4, v11, v15}, Lcom/android/internal/telephony/cdma/utk/BipService;->closeChannel(IZ)V

    goto/16 :goto_1

    .end local v11    # "chId":I
    .end local v15    # "listen":Z
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_c
    move-object/from16 v4, p1

    .line 832
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;

    iget v11, v4, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->chId:I

    .line 833
    .restart local v11    # "chId":I
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->reqDataLength:I

    move/from16 v18, v0

    .line 836
    .local v18, "reqDataLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    move/from16 v0, v18

    invoke-virtual {v4, v11, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->receiveData(II)V

    goto/16 :goto_1

    .end local v11    # "chId":I
    .end local v18    # "reqDataLength":I
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_d
    move-object/from16 v4, p1

    .line 841
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/SendDataParams;

    iget v11, v4, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->chId:I

    .restart local v11    # "chId":I
    move-object/from16 v4, p1

    .line 842
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/SendDataParams;

    iget-object v13, v4, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->channelData:[B

    .line 843
    .local v13, "data":[B
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/SendDataParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->sendImmediately:Z

    move/from16 v20, v0

    .line 847
    .local v20, "sendImmediately":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    move/from16 v0, v20

    invoke-virtual {v4, v11, v13, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendData(I[BZ)V

    goto/16 :goto_1

    .line 852
    .end local v11    # "chId":I
    .end local v13    # "data":[B
    .end local v20    # "sendImmediately":Z
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_e
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusParams;->chId:I

    .line 854
    .restart local v11    # "chId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/cdma/utk/BipService;->getChannelStatus(I)V

    goto/16 :goto_1

    .line 665
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_2
        :pswitch_e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_1
        :pswitch_7
        :pswitch_c
        :pswitch_3
        :pswitch_1
        :pswitch_d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_4
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V
    .locals 9
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 588
    if-nez p1, :cond_0

    .line 589
    return-void

    .line 593
    :cond_0
    const/4 v7, 0x0

    .line 595
    .local v7, "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleRilMsg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    iget v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mId:I

    sparse-switch v1, :sswitch_data_0

    .line 587
    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 599
    .restart local v7    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :sswitch_1
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v1, v2, :cond_1

    .line 600
    iget-object v7, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 601
    .local v7, "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    if-eqz v7, :cond_1

    .line 602
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    goto :goto_0

    .line 610
    .local v7, "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :sswitch_2
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .local v7, "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleRilMsg cmdParams!=null ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v7, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 622
    const-string/jumbo v2, " rilMsg.mResCode = "

    .line 621
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 622
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 621
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    if-eqz v7, :cond_1

    .line 624
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v1, v2, :cond_3

    .line 625
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    goto :goto_0

    .line 611
    .local v7, "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :catch_0
    move-exception v8

    .line 613
    .local v8, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v1, "Fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_0

    .end local v8    # "e":Ljava/lang/ClassCastException;
    .local v7, "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :cond_2
    move v1, v4

    .line 621
    goto :goto_1

    .line 630
    :cond_3
    iget-object v2, v7, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_0

    .line 636
    .local v7, "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :sswitch_3
    iget-object v7, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 637
    .local v7, "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    if-eqz v7, :cond_1

    .line 638
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    goto :goto_0

    .line 642
    .local v7, "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :sswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleSessionEnd()V

    goto :goto_0

    .line 597
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x5 -> :sswitch_3
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method private handleSessionEnd()V
    .locals 3

    .prologue
    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SESSION END on mPhoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 895
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->resetCurrentCmd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 898
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.utk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 899
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "PHONE_ID"

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 900
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 892
    return-void
.end method

.method private handleUtkTimerTick()V
    .locals 6

    .prologue
    .line 1811
    const-string/jumbo v2, "handleUtkTimerTick"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1814
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 1815
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getTimerManagement(I)Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;

    move-result-object v1

    .line 1816
    .local v1, "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    if-eqz v1, :cond_0

    .line 1817
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->timerTick()V

    .line 1818
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->getRemaining()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1819
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->getTimerId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->removeTimerManagement(I)V

    .line 1814
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1824
    .end local v1    # "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1825
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->stopUtkTimer()V

    .line 1810
    :cond_2
    return-void
.end method

.method private isBusyOnCall()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2035
    const-string/jumbo v7, "isBusyOnCall"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2038
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 2040
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    .line 2050
    .local v4, "s":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    .line 2051
    const-string/jumbo v8, "connectivity"

    .line 2050
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2052
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2053
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 2054
    .local v1, "inDataCall":Z
    if-eqz v2, :cond_0

    .line 2055
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 2058
    .end local v1    # "inDataCall":Z
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "inDataCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2060
    if-nez v1, :cond_1

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v7, :cond_2

    :cond_1
    :goto_0
    return v5

    :cond_2
    move v5, v6

    goto :goto_0
.end method

.method private locationStatusEventDownload()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1936
    const-string/jumbo v0, "locationStatusEventDownload"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1937
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1938
    .local v6, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 1941
    .local v7, "isRightFillLocInfo":Z
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->LOCATION_STATUS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1942
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1947
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    if-nez v0, :cond_0

    .line 1949
    const-string/jumbo v0, "locationStatusEventDownload v2.0 "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1950
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getRecodeLocalinfo()Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    move-result-object v8

    .line 1951
    .local v8, "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lc.MCC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lc.IMSI_11_12 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1952
    iget v0, v8, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    if-eqz v0, :cond_0

    iget v0, v8, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    if-eqz v0, :cond_0

    .line 1953
    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1954
    const-string/jumbo v0, "locationStatusEventDownload include localInfo"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1955
    invoke-virtual {v8, v6}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->localInfoFormat(Ljava/io/ByteArrayOutputStream;)V

    .line 1956
    const/4 v7, 0x1

    .line 1962
    .end local v8    # "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isRightFillLocInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1963
    if-nez v7, :cond_1

    .line 1964
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1967
    :cond_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1969
    .local v4, "additionalInfo":[B
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocationStatusString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1970
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocationStatusString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1971
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->isBusyOnCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1972
    const-string/jumbo v0, "phone is busy, event download abort"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1935
    :goto_0
    return-void

    .line 1974
    :cond_3
    const/4 v1, 0x3

    const/16 v2, 0x82

    const/16 v3, 0x81

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->eventDownload(III[BZ)V

    .line 1975
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocationStatusString:Ljava/lang/String;

    goto :goto_0

    .line 1978
    :cond_4
    const-string/jumbo v0, "the location status already download"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeMenu(Lcom/android/internal/telephony/cdma/utk/Menu;)Z
    .locals 5
    .param p1, "menu"    # Lcom/android/internal/telephony/cdma/utk/Menu;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1626
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 1627
    return v3

    .line 1629
    :catch_0
    move-exception v0

    .line 1630
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "Unable to get Menu\'s items size"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1631
    return v3

    .line 1633
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    return v4
.end method

.method private removeTimerManagement(I)V
    .locals 3
    .param p1, "timerId"    # I

    .prologue
    .line 1841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeTimerManagement id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1843
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    monitor-enter v1

    .line 1844
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1840
    return-void

    .line 1843
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private resetCurrentCmd()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 871
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-nez v1, :cond_0

    .line 872
    return v3

    .line 876
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v0

    .line 877
    .local v0, "type":Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/UtkService;->-getcom_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 884
    return v3

    .line 882
    :sswitch_0
    const/4 v1, 0x0

    return v1

    .line 877
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x9 -> :sswitch_0
        0xc -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private sendMenuSelection(IZ)V
    .locals 11
    .param p1, "menuId"    # I
    .param p2, "helpRequired"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 991
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 994
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0xd3

    .line 995
    .local v5, "tag":I
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 998
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1001
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v5

    .line 1002
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1003
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1004
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1005
    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1008
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v5

    .line 1009
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1010
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1011
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1014
    if-eqz p2, :cond_0

    .line 1015
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v5

    .line 1016
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1017
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1020
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1023
    .local v4, "rawData":[B
    array-length v6, v4

    add-int/lit8 v3, v6, -0x2

    .line 1024
    .local v3, "len":I
    int-to-byte v6, v3

    aput-byte v6, v4, v7

    .line 1026
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1028
    .local v2, "hexString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sending menu selection envelope: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1030
    sget v6, Lcom/android/internal/telephony/cdma/utk/UtkService;->sMutliSimType:I

    if-ne v8, v6, :cond_1

    .line 1031
    const/16 v6, 0xff

    invoke-direct {p0, v8, v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getSvlteUtkCommandType(II)I

    move-result v1

    .line 1032
    .local v1, "cmdType":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UTK LTE: sendMenuSelection through lte ril arbitrator, cmdType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    sget v7, Lcom/android/internal/telephony/cdma/utk/UtkService;->sMutliSimType:I

    invoke-interface {v6, v2, v10, v1, v7}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;II)V

    .line 1038
    .end local v1    # "cmdType":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.internal.telephony.cdma.utk.ESN_MENU_SELECTION"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 989
    return-void

    .line 1036
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v2, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V
    .locals 10
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cdma/utk/ResultCode;
    .param p3, "includeAdditionalInfo"    # Z
    .param p4, "additionalInfo"    # I
    .param p5, "resp"    # Lcom/android/internal/telephony/cdma/utk/ResponseData;

    .prologue
    .line 907
    if-nez p1, :cond_0

    .line 908
    return-void

    .line 911
    :cond_0
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v7

    iget v8, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    if-ne v7, v8, :cond_1

    sget-boolean v7, Lcom/android/internal/telephony/cdma/utk/UtkService;->sQueryMenuFlag:Z

    if-eqz v7, :cond_1

    .line 912
    const-string/jumbo v7, "Ignore response from query menu case"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 913
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/internal/telephony/cdma/utk/UtkService;->sQueryMenuFlag:Z

    .line 914
    return-void

    .line 916
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 919
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v6

    .line 920
    .local v6, "tag":I
    iget-boolean v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->compRequired:Z

    if-eqz v7, :cond_2

    .line 921
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v6, v7, 0x80

    .line 923
    :cond_2
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 924
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 925
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 926
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 927
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 930
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v6

    .line 931
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 932
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 933
    const/16 v7, 0x82

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 934
    const/16 v7, 0x81

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 937
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v6, v7, 0x80

    .line 938
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 939
    if-eqz p3, :cond_5

    const/4 v4, 0x2

    .line 940
    .local v4, "length":I
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 941
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->value()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 944
    if-eqz p3, :cond_3

    .line 945
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 949
    :cond_3
    if-eqz p5, :cond_4

    .line 951
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->LOCAL_INFO:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v7

    iget v8, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    if-ne v7, v8, :cond_8

    .line 952
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendTerminalResponse : mServiceState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 953
    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    if-eqz v7, :cond_6

    .line 971
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 972
    .local v5, "rawData":[B
    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 974
    .local v2, "hexString":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TERMINAL RESPONSE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 977
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 978
    sget v7, Lcom/android/internal/telephony/cdma/utk/UtkService;->sMutliSimType:I

    const/4 v8, 0x2

    if-ne v8, v7, :cond_9

    .line 979
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    const/4 v8, 0x1

    invoke-direct {p0, v8, v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getSvlteUtkCommandType(II)I

    move-result v1

    .line 980
    .local v1, "cmdType":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UTK LTE: send terminal response through lte ril arbitrator, cmdType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 982
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    sget v8, Lcom/android/internal/telephony/cdma/utk/UtkService;->sMutliSimType:I

    const/4 v9, 0x0

    invoke-interface {v7, v2, v9, v1, v8}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;II)V

    .line 905
    .end local v1    # "cmdType":I
    :goto_2
    return-void

    .line 939
    .end local v2    # "hexString":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v5    # "rawData":[B
    :cond_5
    const/4 v4, 0x1

    .restart local v4    # "length":I
    goto/16 :goto_0

    .line 957
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getRecodeLocalinfo()Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    move-result-object v3

    .line 958
    .local v3, "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    iget v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    if-nez v7, :cond_7

    iget v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    if-nez v7, :cond_7

    .line 959
    const-string/jumbo v7, "sendTerminalResponse ignore invalid local info value"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 963
    :cond_7
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_1

    .line 967
    .end local v3    # "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    :cond_8
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_1

    .line 984
    .restart local v2    # "hexString":Ljava/lang/String;
    .restart local v5    # "rawData":[B
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    invoke-interface {v7, v2, v8}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_2
.end method

.method private startUtkTimer()V
    .locals 7

    .prologue
    .line 2064
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2065
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 2066
    const-string/jumbo v0, " get new mUtkTicker"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2068
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    .line 2069
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    new-instance v1, Lcom/android/internal/telephony/cdma/utk/UtkService$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/utk/UtkService$3;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkService;)V

    .line 2073
    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    .line 2069
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v6

    .line 2063
    return-void

    .line 2075
    :cond_0
    :try_start_1
    const-string/jumbo v0, "mUtkTicker already running"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2064
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private stopUtkTimer()V
    .locals 2

    .prologue
    .line 2081
    const-string/jumbo v0, "stopUtkTimer"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2083
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2084
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2085
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2086
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2087
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2080
    return-void

    .line 2083
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateIccStatus(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x7

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 533
    const-string/jumbo v2, "updateIccStatus"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_0

    .line 535
    const-string/jumbo v2, "mUiccController == null, cant do nothing"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    return-void

    .line 539
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 540
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v1, :cond_1

    .line 541
    const-string/jumbo v2, "uiccCard == null, cant do nothing"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    return-void

    .line 545
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 547
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "newUiccApplication "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    if-nez p1, :cond_5

    .line 550
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v2, v0, :cond_3

    .line 551
    const-string/jumbo v2, "mUiccApplicationSim1 have changed!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_2

    .line 553
    const-string/jumbo v2, "mUiccApplicationSim1 unregisterForReady!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 555
    sput-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 557
    :cond_2
    if-eqz v0, :cond_4

    .line 558
    const-string/jumbo v2, "mUiccApplicationSim1 registerForReady successly"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    sput p1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    .line 560
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 561
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2, p0, v6, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 584
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current active utk phone Id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    return-void

    .line 563
    :cond_4
    sput v5, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    goto :goto_0

    .line 567
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v2, v0, :cond_3

    .line 568
    const-string/jumbo v2, "mUiccApplicationSim2 have changed!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_6

    .line 570
    const-string/jumbo v2, "mUiccApplicationSim2 unregisterForReady!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 572
    sput-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 574
    :cond_6
    if-eqz v0, :cond_7

    .line 575
    const-string/jumbo v2, "mUiccApplicationSim2 registerForReady successly"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    sput p1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    .line 577
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 578
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2, p0, v6, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 580
    :cond_7
    sput v5, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    goto :goto_0
.end method

.method private validateResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)Z
    .locals 3
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    .prologue
    const/4 v2, 0x1

    .line 1608
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1609
    const-string/jumbo v0, "Uncheck open channel cmd"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1610
    return v2

    .line 1612
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1613
    const-string/jumbo v0, "Uncheck display text cmd"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1614
    return v2

    .line 1616
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v0, :cond_2

    .line 1617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "validateResponse resMsg.cmdDet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "validateResponse mCurrntCmd.mCmdDet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1619
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->compareTo(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)Z

    move-result v0

    return v0

    .line 1621
    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dispose()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 464
    const-string/jumbo v1, "dispose"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.utk.service_dispose"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->stopUtkTimer()V

    .line 471
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/BipService;->dispose()V

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkSessionEnd(Landroid/os/Handler;)V

    .line 476
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkProactiveCmd(Landroid/os/Handler;)V

    .line 477
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkEvent(Landroid/os/Handler;)V

    .line 479
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 481
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->unRegisterLteRilEvents()V

    .line 487
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 488
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIRStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 490
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    if-eqz v1, :cond_2

    .line 491
    const-string/jumbo v1, "Wp2UtkService"

    const-string/jumbo v2, "mMsgDecoder dispose"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->dispose(I)V

    .line 493
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 495
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_3

    .line 496
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 497
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 499
    :cond_3
    const-string/jumbo v1, "UtkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " dispose UtkService instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_4

    .line 501
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 502
    sput-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 509
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 513
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    if-nez v1, :cond_6

    .line 514
    sput-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 520
    :goto_1
    sput-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 521
    const-string/jumbo v1, "Wp2UtkService"

    const-string/jumbo v2, "dispose-"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return-void

    .line 503
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    if-ne v5, v1, :cond_5

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_5

    .line 504
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 505
    sput-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->sUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    goto :goto_0

    .line 507
    :cond_5
    const-string/jumbo v1, "Wp2UtkService"

    const-string/jumbo v2, "invalid ca dispose"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    if-ne v5, v1, :cond_7

    .line 516
    sput-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    goto :goto_1

    .line 518
    :cond_7
    const-string/jumbo v1, "Wp2UtkService"

    const-string/jumbo v2, "invalid utk dispose"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 525
    const-string/jumbo v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 67
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ril message arrived : ["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "] from Phone "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1246
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1589
    :pswitch_0
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unrecognized UTK command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1253
    :pswitch_1
    const-string/jumbo v3, "ril message arrived "

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1254
    const/16 v54, 0x0

    .line 1255
    .local v54, "data":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1256
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Landroid/os/AsyncResult;

    .line 1257
    .local v51, "ar":Landroid/os/AsyncResult;
    if-eqz v51, :cond_0

    move-object/from16 v0, v51

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1259
    :try_start_0
    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v54, v0

    .end local v54    # "data":Ljava/lang/String;
    check-cast v54, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    .end local v51    # "ar":Landroid/os/AsyncResult;
    :cond_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v7, 0x1e

    if-ne v7, v3, :cond_2

    .line 1266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "menu data is "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1267
    invoke-static/range {v54 .. v54}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1268
    const-string/jumbo v3, "MSG_ID_MENU_INFO, data is null"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1244
    :cond_1
    :goto_0
    return-void

    .line 1272
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    if-eqz v3, :cond_3

    .line 1273
    const-string/jumbo v3, "ril message delay..."

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v54

    invoke-direct {v7, v8, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1277
    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    .line 1278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    if-eqz v3, :cond_4

    .line 1279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    new-instance v7, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v54

    invoke-direct {v7, v8, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    .line 1281
    :cond_4
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v7, 0x1e

    if-ne v7, v3, :cond_1

    .line 1282
    const-string/jumbo v3, "Ignore response from query menu case"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1283
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->sQueryMenuFlag:Z

    goto :goto_0

    .line 1287
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    if-eqz v3, :cond_5

    .line 1288
    const-string/jumbo v3, "ril message delay..."

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1292
    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    .line 1294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    new-instance v7, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    goto/16 :goto_0

    .line 1297
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 1298
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Landroid/os/AsyncResult;

    .line 1299
    .restart local v51    # "ar":Landroid/os/AsyncResult;
    const/16 v57, -0x1

    .line 1300
    .local v57, "index":I
    if-eqz v51, :cond_6

    move-object/from16 v0, v51

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    .line 1301
    move-object/from16 v0, v51

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v57

    .line 1302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MSG_ID_ICC_CHANGED, index = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v57

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1303
    const-string/jumbo v7, " and mPhoneId = "

    .line 1302
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1303
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    .line 1302
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1307
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    move/from16 v0, v57

    if-ne v0, v3, :cond_1

    .line 1308
    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->updateIccStatus(I)V

    goto/16 :goto_0

    .line 1305
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MSG_ID_ICC_CHANGED, no index and mPhoneId = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1313
    .end local v51    # "ar":Landroid/os/AsyncResult;
    .end local v57    # "index":I
    :pswitch_4
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1314
    sget v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->sMutliSimType:I

    const/4 v7, 0x2

    if-ne v7, v3, :cond_7

    .line 1315
    const-string/jumbo v3, "utk MSG_ID_RUIM_READY registerLteRilEvents"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1316
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->registerLteRilEvents()V

    .line 1321
    :cond_7
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    aget-object v3, v3, v7

    .line 1320
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 1322
    .local v61, "mUiccType":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPhoneId: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " mUiccType: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v61

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1324
    if-eqz v61, :cond_8

    const-string/jumbo v3, "RUIM"

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1325
    const/16 v4, 0xd6

    .line 1326
    .local v4, "mUpdateBinary":I
    const/16 v5, 0x6f90

    .line 1327
    .local v5, "mfileid":I
    const-string/jumbo v6, "3F007F25"

    .line 1328
    .local v6, "mEfModelPath":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getModelMessage()Ljava/lang/String;

    move-result-object v10

    .line 1329
    .local v10, "mModelMessage":Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 1330
    const-string/jumbo v3, "utk write EF_Model"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 1332
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7e

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1331
    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1336
    .end local v4    # "mUpdateBinary":I
    .end local v5    # "mfileid":I
    .end local v6    # "mEfModelPath":Ljava/lang/String;
    .end local v10    # "mModelMessage":Ljava/lang/String;
    :cond_8
    const-string/jumbo v3, "utk profileDownload"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const-string/jumbo v7, ""

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->profileDownload(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1340
    .end local v61    # "mUiccType":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleRilMsg(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 1343
    const-string/jumbo v3, " decoding pending ril msg"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .line 1346
    .local v63, "r":Lcom/android/internal/telephony/cdma/utk/RilMessage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    move-object/from16 v0, v63

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    .line 1352
    .end local v63    # "r":Lcom/android/internal/telephony/cdma/utk/RilMessage;
    :goto_2
    const-string/jumbo v3, " decoding pending ril msg done"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1350
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    goto :goto_2

    .line 1355
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V

    goto/16 :goto_0

    .line 1359
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Landroid/os/AsyncResult;

    .line 1360
    .local v52, "aresult":Landroid/os/AsyncResult;
    move-object/from16 v0, v52

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_a

    .line 1361
    move-object/from16 v0, v52

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, [I

    .line 1362
    .local v58, "info":[I
    move-object/from16 v0, v58

    array-length v3, v0

    const/16 v7, 0x8

    if-ne v3, v7, :cond_c

    .line 1363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v7, 0x0

    aget v7, v58, v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->Technology:I

    .line 1364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v7, 0x1

    aget v7, v58, v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v7, 0x2

    aget v7, v58, v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v7, 0x3

    aget v7, v58, v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->SID:I

    .line 1367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v7, 0x4

    aget v7, v58, v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->NID:I

    .line 1368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v7, 0x5

    aget v7, v58, v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_ID:I

    .line 1369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v7, 0x6

    aget v7, v58, v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LAT:I

    .line 1370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v7, 0x7

    aget v7, v58, v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LONG:I

    .line 1376
    .end local v58    # "info":[I
    :cond_a
    :goto_3
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v7, 0xc

    if-ne v3, v7, :cond_10

    .line 1377
    const-string/jumbo v3, "response cmd local info"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1379
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getRecodeLocalinfo()Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    move-result-object v60

    .line 1381
    .local v60, "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    sget-object v13, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 1382
    .local v13, "resCode":Lcom/android/internal/telephony/cdma/utk/ResultCode;
    const/4 v14, 0x0

    .line 1383
    .local v14, "includeAdditionalInfo":Z
    const/4 v15, 0x0

    .line 1385
    .local v15, "additionalInfo":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "response cmd local info : mServiceState = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1386
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    if-eqz v3, :cond_d

    .line 1387
    sget-object v13, Lcom/android/internal/telephony/cdma/utk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 1388
    const/4 v14, 0x1

    .line 1389
    const/4 v15, 0x4

    .line 1397
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchLocalInfoCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v3, :cond_e

    .line 1398
    const-string/jumbo v3, "response cmd local info: mCatchLocalInfoCmd != null! "

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchLocalInfoCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v12, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    .line 1401
    new-instance v16, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;

    .line 1402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchLocalInfoCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    .line 1401
    move-object/from16 v0, v16

    move-object/from16 v1, v60

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;-><init>(ILcom/android/internal/telephony/cdma/utk/LocalInfo;)V

    move-object/from16 v11, p0

    .line 1399
    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1413
    :goto_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1372
    .end local v13    # "resCode":Lcom/android/internal/telephony/cdma/utk/ResultCode;
    .end local v14    # "includeAdditionalInfo":Z
    .end local v15    # "additionalInfo":I
    .end local v60    # "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    .restart local v58    # "info":[I
    :cond_c
    const-string/jumbo v3, "MSG_GET_LOCAL_INFO error"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 1391
    .end local v58    # "info":[I
    .restart local v13    # "resCode":Lcom/android/internal/telephony/cdma/utk/ResultCode;
    .restart local v14    # "includeAdditionalInfo":Z
    .restart local v15    # "additionalInfo":I
    .restart local v60    # "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    :cond_d
    move-object/from16 v0, v60

    iget v3, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    if-nez v3, :cond_b

    move-object/from16 v0, v60

    iget v3, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    if-nez v3, :cond_b

    .line 1392
    sget-object v13, Lcom/android/internal/telephony/cdma/utk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 1393
    const/4 v14, 0x1

    .line 1394
    const/4 v15, 0x4

    goto :goto_4

    .line 1403
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v3, :cond_f

    sget-object v3, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->LOCAL_INFO:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v3

    .line 1404
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v7, v7, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    .line 1403
    if-ne v3, v7, :cond_f

    .line 1405
    const-string/jumbo v3, "response cmd local info: mCurrntCmd != null! "

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v12, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    .line 1408
    new-instance v16, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;

    .line 1409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    .line 1408
    move-object/from16 v0, v16

    move-object/from16 v1, v60

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;-><init>(ILcom/android/internal/telephony/cdma/utk/LocalInfo;)V

    move-object/from16 v11, p0

    .line 1406
    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_5

    .line 1411
    :cond_f
    const-string/jumbo v3, "Both mCurrntCmd and mCatchLocalInfoCmd are null"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 1416
    .end local v13    # "resCode":Lcom/android/internal/telephony/cdma/utk/ResultCode;
    .end local v14    # "includeAdditionalInfo":Z
    .end local v15    # "additionalInfo":I
    .end local v60    # "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->locationStatusEventDownload()V

    goto/16 :goto_0

    .line 1420
    .end local v52    # "aresult":Landroid/os/AsyncResult;
    :pswitch_8
    const-string/jumbo v3, "MSG_ID_RIL_REFRESH_RESULT  Complete! "

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1421
    new-instance v59, Landroid/content/Intent;

    invoke-direct/range {v59 .. v59}, Landroid/content/Intent;-><init>()V

    .line 1422
    .local v59, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.contacts.action.CONTACTS_INIT_RETRY_ACTION"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v59

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v3, :cond_1

    .line 1426
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v7, v7, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    if-ne v3, v7, :cond_1

    .line 1427
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 1428
    const-string/jumbo v3, "Clear REFRESH mCurrentCmd"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1435
    .end local v59    # "intent":Landroid/content/Intent;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 1436
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Ljava/lang/String;

    .line 1437
    .local v56, "hexString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sending timeout envelope: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    move-object/from16 v0, v56

    invoke-interface {v3, v0, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1442
    .end local v56    # "hexString":Ljava/lang/String;
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleUtkTimerTick()V

    goto/16 :goto_0

    .line 1445
    :pswitch_b
    const-string/jumbo v3, "handleMessage MSG_ID_EVENT_DOWNLOAD"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1446
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleEventDownload(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V

    goto/16 :goto_0

    .line 1450
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-nez v3, :cond_12

    .line 1451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchChannelCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-nez v3, :cond_11

    .line 1452
    const-string/jumbo v3, "handleMessage MSG_ID_OPENED_CHANNEL:mCurrntCmd is null, mCatchChannelCmd is null"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1454
    return-void

    .line 1456
    :cond_11
    const-string/jumbo v3, "handleMessage MSG_ID_OPENED_CHANNEL:mCurrntCmd is null, mCatchChannelCmd isn\'t null"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchChannelCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 1462
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleMessage MSG_ID_OPENED_CHANNEL:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " arg2:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1463
    const/16 v21, 0x0

    .line 1464
    .local v21, "rsp":Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_14

    .line 1465
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;

    .line 1466
    .local v62, "openResult":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    new-instance v21, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;

    .end local v21    # "rsp":Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    move-object/from16 v0, v21

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;)V

    .line 1467
    .local v21, "rsp":Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 1468
    const/4 v7, 0x4

    .line 1467
    if-ne v3, v7, :cond_13

    .line 1469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v17, v0

    .line 1470
    sget-object v18, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, p0

    .line 1469
    invoke-direct/range {v16 .. v21}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1486
    .end local v21    # "rsp":Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    .end local v62    # "openResult":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 1487
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchChannelCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1472
    .restart local v21    # "rsp":Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    .restart local v62    # "openResult":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, p0

    invoke-direct/range {v16 .. v21}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_6

    .line 1475
    .end local v62    # "openResult":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    .local v21, "rsp":Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    :cond_14
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_15

    .line 1476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v23, v0

    .line 1477
    sget-object v24, Lcom/android/internal/telephony/cdma/utk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, p0

    .line 1476
    invoke-direct/range {v22 .. v27}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_6

    .line 1478
    :cond_15
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x5

    if-ne v3, v7, :cond_16

    .line 1479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v23, v0

    .line 1480
    sget-object v24, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, p0

    .line 1479
    invoke-direct/range {v22 .. v27}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_6

    .line 1482
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v23, v0

    .line 1483
    sget-object v24, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, p0

    .line 1482
    invoke-direct/range {v22 .. v27}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_6

    .line 1492
    .end local v21    # "rsp":Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-nez v3, :cond_17

    .line 1493
    return-void

    .line 1496
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleMessage MSG_ID_SENT_DATA:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " arg2:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1497
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_18

    .line 1498
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, [I

    .line 1499
    .local v53, "availableTxSize":[I
    new-instance v27, Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;

    const/4 v3, 0x0

    aget v3, v53, v3

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;-><init>(I)V

    .line 1500
    .local v27, "rsp":Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, p0

    invoke-direct/range {v22 .. v27}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1515
    .end local v27    # "rsp":Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;
    .end local v53    # "availableTxSize":[I
    :goto_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1502
    :cond_18
    const/16 v32, 0x0

    .line 1503
    .local v32, "additionInfo":I
    const/16 v31, 0x0

    .line 1505
    .local v31, "withAdd":Z
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1a

    .line 1506
    const/16 v32, 0x5

    .line 1507
    const/16 v31, 0x1

    .line 1512
    :cond_19
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 1513
    const/16 v33, 0x0

    move-object/from16 v28, p0

    .line 1512
    invoke-direct/range {v28 .. v33}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_7

    .line 1508
    :cond_1a
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_19

    .line 1509
    const/16 v32, 0x5

    .line 1510
    const/16 v31, 0x1

    goto :goto_8

    .line 1520
    .end local v31    # "withAdd":Z
    .end local v32    # "additionInfo":I
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-nez v3, :cond_1b

    .line 1521
    return-void

    .line 1524
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleMessage MSG_ID_RECEIVED_DATA:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " arg2:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1526
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1c

    .line 1527
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v64, v0

    check-cast v64, [B

    .line 1528
    .local v64, "receivedData":[B
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v65, v0

    .line 1529
    .local v65, "remaining":I
    new-instance v38, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;

    move-object/from16 v0, v38

    move-object/from16 v1, v64

    move/from16 v2, v65

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;-><init>([BI)V

    .line 1531
    .local v38, "rsp":Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v34, v0

    sget-object v35, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v33, p0

    invoke-direct/range {v33 .. v38}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1543
    .end local v38    # "rsp":Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;
    .end local v64    # "receivedData":[B
    .end local v65    # "remaining":I
    :goto_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1532
    :cond_1c
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1d

    .line 1533
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v64, v0

    check-cast v64, [B

    .line 1534
    .restart local v64    # "receivedData":[B
    const/16 v65, 0x0

    .line 1535
    .restart local v65    # "remaining":I
    new-instance v38, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;

    move-object/from16 v0, v38

    move-object/from16 v1, v64

    move/from16 v2, v65

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;-><init>([BI)V

    .line 1537
    .restart local v38    # "rsp":Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v34, v0

    .line 1538
    sget-object v35, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v33, p0

    .line 1537
    invoke-direct/range {v33 .. v38}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_9

    .line 1540
    .end local v38    # "rsp":Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;
    .end local v64    # "receivedData":[B
    .end local v65    # "remaining":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v40, v0

    .line 1541
    sget-object v41, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v39, p0

    .line 1540
    invoke-direct/range {v39 .. v44}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_9

    .line 1547
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-nez v3, :cond_1e

    .line 1548
    return-void

    .line 1551
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleMessage MSG_ID_CLOSED_CHANNEL:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " arg2:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1553
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1f

    .line 1554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v40, v0

    sget-object v41, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v39, p0

    invoke-direct/range {v39 .. v44}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1558
    :goto_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1556
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v40, v0

    sget-object v41, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v39, p0

    invoke-direct/range {v39 .. v44}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_a

    .line 1562
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-nez v3, :cond_20

    .line 1563
    return-void

    .line 1566
    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleMessage MSG_ID_GET_CHANNEL_STATUS:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1567
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 1566
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1567
    const-string/jumbo v7, " arg2:"

    .line 1566
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1567
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    .line 1566
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1569
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_21

    .line 1570
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v66, v0

    check-cast v66, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 1571
    .local v66, "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    new-instance v44, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;

    move-object/from16 v0, v44

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;-><init>(Lcom/android/internal/telephony/cdma/utk/ChannelStatus;)V

    .line 1572
    .local v44, "rsp":Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v40, v0

    sget-object v41, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v39, p0

    invoke-direct/range {v39 .. v44}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1576
    .end local v44    # "rsp":Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;
    .end local v66    # "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    :goto_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1574
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v46, v0

    sget-object v47, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v45, p0

    invoke-direct/range {v45 .. v50}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_b

    .line 1581
    :pswitch_11
    const-string/jumbo v3, "handleMessage MSG_ID_RADIO_OFF_OR_UNAVAILABLE"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1582
    new-instance v59, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.utk.radio_off"

    move-object/from16 v0, v59

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1583
    .restart local v59    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v59

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1260
    .end local v59    # "intent":Landroid/content/Intent;
    .restart local v51    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v55

    .local v55, "e":Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .line 1246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_b
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isRadioOn()Z
    .locals 3

    .prologue
    .line 2221
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 2222
    .local v0, "mRadioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRadioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2223
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    .line 2224
    const/4 v1, 0x1

    return v1

    .line 2226
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
    .locals 2
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    .prologue
    monitor-enter p0

    .line 1599
    if-nez p1, :cond_0

    monitor-exit p0

    .line 1600
    return-void

    .line 1603
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1604
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1598
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onEventDownload(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
    .locals 2
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    .prologue
    monitor-enter p0

    .line 1802
    if-nez p1, :cond_0

    monitor-exit p0

    .line 1803
    return-void

    .line 1806
    :cond_0
    const/16 v1, 0x8

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1807
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1801
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public queryUtkSetupMenuFromMD()V
    .locals 3

    .prologue
    .line 2207
    const-string/jumbo v1, "query utk menu from modem"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2208
    const/16 v1, 0x1e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2211
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryUtkSetupMenuFromMD(Ljava/lang/String;Landroid/os/Message;)V

    .line 2206
    return-void
.end method

.method public registerLteRilEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2235
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 2236
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    if-eqz v0, :cond_2

    .line 2237
    const-string/jumbo v0, "UTK LTE: sLteDcPhoneProxy != null "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2238
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getRilDcArbitrator()Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    .line 2239
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    if-eqz v0, :cond_0

    .line 2240
    const-string/jumbo v0, "UTK LTE: sRilDcArbitrator != null "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2242
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 2243
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_1

    .line 2244
    const-string/jumbo v0, "UTK LTE: sLtePhone != null "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2245
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 2247
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_2

    .line 2248
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2249
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2234
    :cond_2
    return-void
.end method

.method public unRegisterLteRilEvents()V
    .locals 2

    .prologue
    .line 2260
    const-string/jumbo v0, "unRegister Lte Ril events"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2261
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2262
    sget v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sMutliSimType:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 2263
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 2264
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkSessionEnd(Landroid/os/Handler;)V

    .line 2265
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkProactiveCmd(Landroid/os/Handler;)V

    .line 2259
    :cond_0
    return-void
.end method
