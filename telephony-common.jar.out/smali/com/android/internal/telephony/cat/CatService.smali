.class public Lcom/android/internal/telephony/cat/CatService;
.super Landroid/os/Handler;
.source "CatService.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatService$1;,
        Lcom/android/internal/telephony/cat/CatService$2;,
        Lcom/android/internal/telephony/cat/CatService$3;,
        Lcom/android/internal/telephony/cat/CatService$4;,
        Lcom/android/internal/telephony/cat/CatService$5;,
        Lcom/android/internal/telephony/cat/CatService$6;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I = null

.field private static synthetic -com_android_internal_telephony_cat_ResultCodeSwitchesValues:[I = null

.field static final ACTION_PREBOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_PREBOOT_IPO"

.field static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final DBG:Z = true

.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final DISPLAY_TEXT_DISABLE_PROPERTY:Ljava/lang/String; = "persist.service.cat.dt.disable"

.field static final EVENT_LIST_ELEMENT_BROWSER_TERMINATION:I = 0x8

.field static final EVENT_LIST_ELEMENT_CALL_CONNECTED:I = 0x1

.field static final EVENT_LIST_ELEMENT_CALL_DISCONNECTED:I = 0x2

.field static final EVENT_LIST_ELEMENT_CARD_READER_STATUS:I = 0x6

.field static final EVENT_LIST_ELEMENT_IDLE_SCREEN_AVAILABLE:I = 0x5

.field static final EVENT_LIST_ELEMENT_LANGUAGE_SELECTION:I = 0x7

.field static final EVENT_LIST_ELEMENT_LOCATION_STATUS:I = 0x3

.field static final EVENT_LIST_ELEMENT_MT_CALL:I = 0x0

.field static final EVENT_LIST_ELEMENT_USER_ACTIVITY:I = 0x4

.field static final IDLE_SCREEN_ENABLE_KEY:Ljava/lang/String; = "_enable"

.field static final IDLE_SCREEN_INTENT_NAME:Ljava/lang/String; = "android.intent.action.IDLE_SCREEN_NEEDED"

.field protected static final MSG_ID_ALPHA_NOTIFY:I = 0x9

.field public static final MSG_ID_CACHED_DISPLAY_TEXT_TIMEOUT:I = 0x2e

.field private static final MSG_ID_CALL_CTRL:I = 0x19

.field protected static final MSG_ID_CALL_SETUP:I = 0x4

.field public static final MSG_ID_CONN_RETRY_TIMEOUT:I = 0x2f

.field static final MSG_ID_DB_HANDLER:I = 0xc

.field private static final MSG_ID_DISABLE_DISPLAY_TEXT_DELAYED:I = 0xf

.field private static final MSG_ID_EVDL_CALL:I = 0x15

.field static final MSG_ID_EVENT_DOWNLOAD:I = 0xb

.field protected static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field protected static final MSG_ID_ICC_CHANGED:I = 0x8

.field private static final MSG_ID_ICC_RECORDS_LOADED:I = 0x14

.field private static final MSG_ID_ICC_REFRESH:I = 0x1e

.field private static final MSG_ID_IVSR_DELAYED:I = 0xe

.field static final MSG_ID_LAUNCH_DB_SETUP_MENU:I = 0xd

.field public static final MSG_ID_MENU_INFO:I = 0x30

.field private static final MSG_ID_MODEM_EVDL_CALL_CONN_TIMEOUT:I = 0x16

.field private static final MSG_ID_MODEM_EVDL_CALL_DISCONN_TIMEOUT:I = 0x17

.field protected static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field protected static final MSG_ID_SESSION_END:I = 0x1

.field private static final MSG_ID_SETUP_MENU_RESET:I = 0x18

.field static final MSG_ID_SIM_READY:I = 0x7

.field static final STK_DEFAULT:Ljava/lang/String; = "Default Message"

.field private static final STK_EVDL_CALL_STATE_CALLCONN:I = 0x0

.field private static final STK_EVDL_CALL_STATE_CALLDISCONN:I = 0x1

.field static final USER_ACTIVITY_ENABLE_KEY:Ljava/lang/String; = "state"

.field static final USER_ACTIVITY_INTENT_NAME:Ljava/lang/String; = "android.intent.action.stk.USER_ACTIVITY.enable"

.field private static mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private static mIsCatServiceDisposed:Z

.field protected static mLock:Ljava/lang/Object;

.field private static mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

.field private static mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field public static mQueryMenuFlag:Z

.field private static mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

.field private static mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private static sInstKey:[Ljava/lang/String;

.field private static sInstance:[Lcom/android/internal/telephony/cat/CatService;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private CACHED_DISPLAY_TIMEOUT:I

.field private CatServiceReceiver:Landroid/content/BroadcastReceiver;

.field private final DISABLE_DISPLAY_TEXT_DELAYED_TIME:I

.field private final IVSR_DELAYED_TIME:I

.field private final LTE_DC_PHONE_PROXY_ID:I

.field private MODEM_EVDL_TIMEOUT:I

.field private ResultCodeFlag:I

.field private default_send_setupmenu_tr:Z

.field private isDisplayTextDisabled:Z

.field private isIvsrBootUp:Z

.field private mBipService:Lcom/android/internal/telephony/cat/BipService;

.field private mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private final mClearDisplayTextReceiver:Landroid/content/BroadcastReceiver;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mEvdlCallConnObjQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEvdlCallDisConnObjQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEvdlCallObj:I

.field private mEventDownloadCallConnInfo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/cat/EventDownloadCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/cat/EventDownloadCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEventList:[B

.field public mGotSetUpMenu:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasCachedDTCmd:Z

.field private mIsAllCallDisConn:Z

.field private mIsProactiveCmdResponsed:Z

.field private mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private mNLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field mNeedRegisterAgain:Z

.field private mNumEventDownloadCallConn:I

.field private mNumEventDownloadCallDisConn:I

.field private mPowerOnSequenceObserver:Landroid/database/ContentObserver;

.field private mReadFromPreferenceDone:Z

.field public mSaveNewSetUpMenu:Z

.field private mSetUpMenuFromMD:Z

.field private mSlotId:I

.field private mStkAppInstalled:Z

.field private final mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

.field mTimeoutHandler:Landroid/os/Handler;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private final mUtkSetupEventListFilter:Landroid/content/IntentFilter;

.field private final mUtkSetupEventListReceiver:Landroid/content/BroadcastReceiver;

.field private simIdfromIntent:I

.field private simState:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/cat/CatService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/cat/CatService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/BipService;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mBipService:Lcom/android/internal/telephony/cat/BipService;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/cat/CatService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->simIdfromIntent:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic -getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_28

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CALLCTRL_RSP_MSG:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_27

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_26

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DECLARE_SERVICE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_25

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_24

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_23

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_22

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_FRAME_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_21

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_20

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1f

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_READER_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1e

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_SERVICE_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1d

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1c

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1b

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->MORE_TIME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1a

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_19

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PERFORM_CARD_APDU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_18

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_17

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POLLING_OFF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_16

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POLL_INTERVAL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_15

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POWER_OFF_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POWER_ON_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_13

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_12

    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_11

    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_10

    :goto_18
    :try_start_19
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RETRIEVE_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_f

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RUN_AT_COMMAND:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_e

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_d

    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_c

    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_b

    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_a

    :goto_1e
    :try_start_1f
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_9

    :goto_1f
    :try_start_20
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_8

    :goto_20
    :try_start_21
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SERVICE_SEARCH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_7

    :goto_21
    :try_start_22
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_FRAME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_6

    :goto_22
    :try_start_23
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_5

    :goto_23
    :try_start_24
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_4

    :goto_24
    :try_start_25
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_3

    :goto_25
    :try_start_26
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_2

    :goto_26
    :try_start_27
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SUBMIT_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_1

    :goto_27
    :try_start_28
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->TIMER_MANAGEMENT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_0

    :goto_28
    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

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

.method private static synthetic -getcom_android_internal_telephony_cat_ResultCodeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->-com_android_internal_telephony_cat_ResultCodeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->-com_android_internal_telephony_cat_ResultCodeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cat/ResultCode;->values()[Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->ACCESS_TECH_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_24

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_23

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_22

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_21

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_20

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_NUM_NOT_KNOWN:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1f

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1e

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1d

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->FRAMES_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1c

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1b

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1a

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->MMS_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_19

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->MMS_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_18

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->MULTI_CARDS_CMD_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_17

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NAA_CALL_CONTROL_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_16

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_15

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_14

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_13

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_LIMITED_SERVICE:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_11

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_MODIFIED_BY_NAA:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_10

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_NAA_NOT_ACTIVE:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_f

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_TONE_NOT_PLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_e

    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_d

    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_c

    :goto_18
    :try_start_19
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_b

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_a

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_9

    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->SMS_RP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_8

    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->SS_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_7

    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_6

    :goto_1e
    :try_start_1f
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_5

    :goto_1f
    :try_start_20
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USER_CLEAR_DOWN_CALL:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_4

    :goto_20
    :try_start_21
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_3

    :goto_21
    :try_start_22
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_2

    :goto_22
    :try_start_23
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_1

    :goto_23
    :try_start_24
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USSD_SS_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_0

    :goto_24
    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->-com_android_internal_telephony_cat_ResultCodeSwitchesValues:[I

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

.method static synthetic -set0(Lcom/android/internal/telephony/cat/CatService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/cat/CatService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/internal/telephony/cat/CatService;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/internal/telephony/cat/CatService;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/internal/telephony/cat/CatService;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/internal/telephony/cat/CatService;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/cat/CatService;->simIdfromIntent:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/cat/CatService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->checkSetupWizardInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/cat/CatService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->isAlarmBoot()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 0
    .param p1, "cardState"    # Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .param p2, "iccRefreshState"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/cat/CatService;I)V
    .locals 0
    .param p1, "sim_id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->clearCachedDisplayText(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/cat/CatService;I)V
    .locals 0
    .param p1, "sim_id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->handleDBHandler(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "includeAdditionalInfo"    # Z
    .param p4, "additionalInfo"    # I
    .param p5, "resp"    # Lcom/android/internal/telephony/cat/ResponseData;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 142
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    .line 143
    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    .line 154
    sput-boolean v3, Lcom/android/internal/telephony/cat/CatService;->mQueryMenuFlag:Z

    .line 206
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "sInstanceSim1"

    aput-object v1, v0, v3

    .line 207
    const-string/jumbo v1, "sInstanceSim2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 208
    const-string/jumbo v1, "sInstanceSim3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 209
    const-string/jumbo v1, "sInstanceSim4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 206
    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstKey:[Ljava/lang/String;

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->mLock:Ljava/lang/Object;

    .line 221
    sput-boolean v3, Lcom/android/internal/telephony/cat/CatService;->mIsCatServiceDisposed:Z

    .line 224
    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 226
    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    .line 133
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccCard;I)V
    .locals 7
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "ca"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p3, "ir"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p6, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p7, "slotId"    # I

    .prologue
    .line 410
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 146
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 147
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 149
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 150
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 153
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 203
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mBipService:Lcom/android/internal/telephony/cat/BipService;

    .line 211
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->default_send_setupmenu_tr:Z

    .line 212
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mGotSetUpMenu:Z

    .line 213
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 214
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    .line 215
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mReadFromPreferenceDone:Z

    .line 216
    const/16 v4, 0x7d0

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->MODEM_EVDL_TIMEOUT:I

    .line 217
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallConnObjQ:Ljava/util/LinkedList;

    .line 218
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallDisConnObjQ:Ljava/util/LinkedList;

    .line 219
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    .line 227
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mNLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 249
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    .line 250
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    .line 251
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->simIdfromIntent:I

    .line 253
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 255
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    .line 258
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    .line 259
    const v4, 0xea60

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->IVSR_DELAYED_TIME:I

    .line 261
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z

    .line 262
    const/16 v4, 0x7530

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->DISABLE_DISPLAY_TEXT_DELAYED_TIME:I

    .line 264
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    .line 267
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;

    .line 268
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallConnInfo:Ljava/util/LinkedList;

    .line 269
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    .line 270
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    .line 271
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mIsAllCallDisConn:Z

    .line 272
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mIsProactiveCmdResponsed:Z

    .line 274
    const v4, 0x1d4c0

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->CACHED_DISPLAY_TIMEOUT:I

    .line 275
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->LTE_DC_PHONE_PROXY_ID:I

    .line 277
    new-instance v4, Lcom/android/internal/telephony/cat/CatService$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cat/CatService$1;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutHandler:Landroid/os/Handler;

    .line 316
    new-instance v4, Landroid/content/IntentFilter;

    .line 317
    const-string/jumbo v5, "android.intent.action.utk.setup_event_list"

    .line 316
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mUtkSetupEventListFilter:Landroid/content/IntentFilter;

    .line 319
    new-instance v4, Lcom/android/internal/telephony/cat/CatService$2;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cat/CatService$2;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mUtkSetupEventListReceiver:Landroid/content/BroadcastReceiver;

    .line 347
    new-instance v4, Lcom/android/internal/telephony/cat/CatService$3;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cat/CatService$3;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

    .line 397
    new-instance v4, Lcom/android/internal/telephony/cat/CatService$4;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cat/CatService$4;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mClearDisplayTextReceiver:Landroid/content/BroadcastReceiver;

    .line 2361
    new-instance v4, Lcom/android/internal/telephony/cat/CatService$5;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cat/CatService$5;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->CatServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 2582
    new-instance v4, Lcom/android/internal/telephony/cat/CatService$6;

    invoke-direct {v4, p0, p0}, Lcom/android/internal/telephony/cat/CatService$6;-><init>(Lcom/android/internal/telephony/cat/CatService;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mPowerOnSequenceObserver:Landroid/database/ContentObserver;

    .line 2712
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 412
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 414
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    .line 415
    const-string/jumbo v5, "Service: Input parameters must not be null"

    .line 414
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 412
    :cond_1
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 413
    if-eqz p6, :cond_0

    .line 417
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 418
    iput-object p4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 419
    iput p7, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    .line 420
    new-instance v4, Landroid/os/HandlerThread;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cat Telephony service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 421
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    invoke-static {p0, p5, p7}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 426
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-nez v4, :cond_2

    .line 427
    const-string/jumbo v4, "Null RilMessageDecoder instance"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    return-void

    .line 430
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->start()V

    .line 432
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4, p0, v5, v6, p5}, Lcom/android/internal/telephony/cat/BipService;->getInstance(Landroid/content/Context;Landroid/os/Handler;ILcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/BipService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mBipService:Lcom/android/internal/telephony/cat/BipService;

    .line 435
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 436
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 437
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 438
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 440
    const-string/jumbo v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 441
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x15

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkEvdlCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 443
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkSetupMenuReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 444
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x1e

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 446
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 447
    sput-object p3, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 448
    sput-object p2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 451
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 455
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 456
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerForRecordsLoaded slotid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " instance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 460
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "mediatek.intent.action.IVSR_NOTIFY"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    const-string/jumbo v4, "com.android.phone.ACTION_SIM_RECOVERY_DONE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    const-string/jumbo v4, "android.intent.action.ACTION_MD_TYPE_CHANGE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 465
    const-string/jumbo v4, "com.mediatek.intent.action.FINISH_SWITCH_ROAMING_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    :cond_4
    new-instance v3, Landroid/content/IntentFilter;

    .line 468
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    .line 467
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 469
    .local v3, "mSIMStateChangeFilter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->CatServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 471
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->CatServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 472
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.stk.IDLE_SCREEN_AVAILABLE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 473
    .local v2, "mIdleScreenAvailableFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 474
    const-string/jumbo v4, "CatService: is running"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 477
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mUtkSetupEventListReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mUtkSetupEventListFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 479
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 480
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 483
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->isStkAppInstalled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 484
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 485
    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 486
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    if-eqz v4, :cond_7

    .line 487
    const-string/jumbo v4, "STK LTE: mLteDcPhoneProxy != null "

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getRilDcArbitrator()Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    .line 489
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    if-eqz v4, :cond_6

    .line 490
    const-string/jumbo v4, "STK LTE: mRilDcArbitrator != null "

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    :cond_6
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 493
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v4, :cond_7

    .line 494
    const-string/jumbo v4, "STK LTE: mNLtePhone != null "

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mNLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 500
    :cond_7
    const-string/jumbo v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 501
    iget-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v4, :cond_8

    .line 503
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->registerPowerOnSequenceObserver()V

    .line 505
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.stk.clear_display_text"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "ClearDisplayTextFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mClearDisplayTextReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 509
    .end local v0    # "ClearDisplayTextFilter":Landroid/content/IntentFilter;
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Running CAT service on Slotid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 510
    const-string/jumbo v5, ". STK app installed:"

    .line 509
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 510
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 509
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method private broadcastAlphaMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "alphaString"    # Ljava/lang/String;

    .prologue
    .line 2076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Broadcasting CAT Alpha message from card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2077
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.stk.alpha_notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2078
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2079
    const-string/jumbo v1, "alpha_string"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2080
    const-string/jumbo v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2081
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2075
    return-void
.end method

.method private broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 4
    .param p1, "cardState"    # Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .param p2, "iccRefreshState"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    .line 2057
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.stk.icc_status_change"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2058
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    .line 2060
    .local v0, "cardPresent":Z
    :goto_0
    if-eqz p2, :cond_0

    .line 2062
    const-string/jumbo v2, "refresh_result"

    iget v3, p2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2063
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending IccResult with Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2064
    iget v3, p2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 2063
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2068
    :cond_0
    const-string/jumbo v2, "card_status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2069
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending Card Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2070
    const-string/jumbo v3, " "

    .line 2069
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2070
    const-string/jumbo v3, "cardPresent: "

    .line 2069
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2071
    const-string/jumbo v2, "SLOT_ID"

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2072
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2056
    return-void

    .line 2058
    .end local v0    # "cardPresent":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "cardPresent":Z
    goto :goto_0
.end method

.method private broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 1240
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.stk.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1241
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "STK CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1242
    const-string/jumbo v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sending CmdMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " on slotid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1244
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1239
    return-void
.end method

.method private checkSetupWizardInstalled()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2546
    const-string/jumbo v3, "com.google.android.setupwizard"

    .line 2547
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "com.google.android.setupwizard.SetupWizardActivity"

    .line 2549
    .local v0, "activityName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2550
    .local v5, "pm":Landroid/content/pm/PackageManager;
    if-nez v5, :cond_0

    .line 2551
    const-string/jumbo v6, "fail to get PM"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2552
    return v9

    .line 2556
    :cond_0
    const/4 v2, 0x1

    .line 2558
    .local v2, "isPkgInstalled":Z
    :try_start_0
    const-string/jumbo v6, "com.google.android.setupwizard"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2564
    :goto_0
    if-eqz v2, :cond_3

    .line 2565
    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.google.android.setupwizard"

    .line 2566
    const-string/jumbo v8, "com.google.android.setupwizard.SetupWizardActivity"

    .line 2565
    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    .line 2567
    .local v4, "pkgEnabledState":I
    if-eq v4, v10, :cond_1

    .line 2568
    if-nez v4, :cond_2

    .line 2569
    :cond_1
    const-string/jumbo v6, "should not show DISPLAY_TEXT immediately"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2570
    return v10

    .line 2559
    .end local v4    # "pkgEnabledState":I
    :catch_0
    move-exception v1

    .line 2560
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "fail to get SetupWizard package"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2561
    const/4 v2, 0x0

    goto :goto_0

    .line 2574
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "pkgEnabledState":I
    :cond_2
    const-string/jumbo v6, "Setup Wizard Activity is not activate"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2578
    .end local v4    # "pkgEnabledState":I
    :cond_3
    const-string/jumbo v6, "isPkgInstalled = false"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2579
    return v9
.end method

.method private clearCachedDisplayText(I)V
    .locals 5
    .param p1, "sim_id"    # I

    .prologue
    const/4 v4, 0x0

    .line 374
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    const-string/jumbo v2, "CatService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clearCachedDisplayText, sim_id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", mSlotId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", mCachedDisplayTextCmd: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    if-ne p1, v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_2

    .line 378
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 379
    .local v0, "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 380
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 381
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 384
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V

    .line 373
    .end local v0    # "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_0
    :goto_1
    return-void

    .line 375
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 388
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v1, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V

    .line 390
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    goto :goto_1
.end method

.method private encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "cmdInput"    # Lcom/android/internal/telephony/cat/Input;
    .param p4, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 1343
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .line 1344
    .local v0, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v0, :cond_1

    .line 1345
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "encodeOptionalTags() Unsupported Cmd details="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1350
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1351
    if-eqz p3, :cond_0

    iget-object v1, p3, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    if-eqz v1, :cond_0

    .line 1352
    invoke-direct {p0, p4, p3}, Lcom/android/internal/telephony/cat/CatService;->getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V

    goto :goto_0

    .line 1356
    :sswitch_1
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1357
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1358
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cat/CatService;->getPliResponse(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    .line 1366
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "encodeOptionalTags() bad Cmd details="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1345
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private eventDownload(III[BZ)V
    .locals 16
    .param p1, "event"    # I
    .param p2, "sourceId"    # I
    .param p3, "destinationId"    # I
    .param p4, "additionalInfo"    # [B
    .param p5, "oneShot"    # Z

    .prologue
    .line 1551
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1553
    .local v3, "buf":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    array-length v13, v13

    if-nez v13, :cond_1

    .line 1554
    :cond_0
    const-string/jumbo v13, "SS-eventDownload: event list null"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1555
    return-void

    .line 1557
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1558
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v10

    .line 1559
    .local v10, "radioTechMode":I
    const/4 v13, 0x3

    if-ne v13, v10, :cond_2

    .line 1560
    const/16 v13, 0x9

    move/from16 v0, p1

    if-eq v13, v0, :cond_2

    .line 1561
    const/16 v13, 0xa

    move/from16 v0, p1

    if-eq v13, v0, :cond_2

    .line 1562
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SS-eventDownload: Ignore "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " by SVLTE mode."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    return-void

    .line 1569
    .end local v10    # "radioTechMode":I
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SS-eventDownload: event list length:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1570
    const/4 v6, 0x0

    .local v6, "index":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    array-length v13, v13

    if-ge v6, v13, :cond_5

    .line 1571
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SS-eventDownload: event ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    aget-byte v14, v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    aget-byte v13, v13, v6

    move/from16 v0, p1

    if-ne v13, v0, :cond_9

    .line 1574
    const/4 v13, 0x5

    move/from16 v0, p1

    if-ne v0, v13, :cond_6

    .line 1575
    const-string/jumbo v13, "SS-eventDownload: event is IDLE_SCREEN_AVAILABLE"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1576
    const-string/jumbo v13, "SS-eventDownload: sent intent with idle = false"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1577
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.IDLE_SCREEN_NEEDED"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1578
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v13, "_enable"

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1579
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1600
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_0
    if-eqz p5, :cond_5

    .line 1601
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    const/4 v14, 0x0

    aput-byte v14, v13, v6

    .line 1614
    :cond_5
    const/16 v12, 0xd6

    .line 1615
    .local v12, "tag":I
    invoke-virtual {v3, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1618
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1621
    sget-object v13, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v13

    or-int/lit16 v12, v13, 0x80

    .line 1622
    invoke-virtual {v3, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1623
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1624
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1627
    sget-object v13, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v13

    or-int/lit16 v12, v13, 0x80

    .line 1628
    invoke-virtual {v3, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1629
    const/4 v13, 0x2

    invoke-virtual {v3, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1630
    const-string/jumbo v13, "ro.mtk_bsp_package"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    .line 1631
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_e

    .line 1632
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v13

    if-lez v13, :cond_c

    .line 1633
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/cat/CatService;->mIsAllCallDisConn:Z

    if-eqz v13, :cond_a

    .line 1634
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v13

    if-lez v13, :cond_b

    .line 1635
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cat/CatService;->writeCallDisConnED(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_1

    .line 1589
    .end local v12    # "tag":I
    :cond_6
    const/4 v13, 0x4

    move/from16 v0, p1

    if-ne v0, v13, :cond_7

    .line 1590
    const-string/jumbo v13, "SS-eventDownload: event is USER_ACTIVITY"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1591
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.stk.USER_ACTIVITY.enable"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1592
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string/jumbo v13, "state"

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1593
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1594
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_7
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_8

    .line 1595
    const-string/jumbo v13, "SS-eventDownload: event is CALL_CONNECTED"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1596
    :cond_8
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_4

    .line 1597
    const-string/jumbo v13, "SS-eventDownload: event is CALL_DISCONNECTED"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1606
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 1607
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    array-length v13, v13

    if-ne v6, v13, :cond_3

    .line 1608
    return-void

    .line 1638
    .restart local v12    # "tag":I
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cat/CatService;->writeCallDisConnED(Ljava/io/ByteArrayOutputStream;)V

    .line 1686
    :cond_b
    :goto_2
    if-eqz p4, :cond_15

    .line 1687
    const/4 v13, 0x0

    move-object/from16 v0, p4

    array-length v14, v0

    :goto_3
    if-ge v13, v14, :cond_15

    aget-byte v2, p4, v13

    .line 1688
    .local v2, "b":B
    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1687
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1641
    .end local v2    # "b":B
    :cond_c
    const-string/jumbo v13, "SS-eventDownload: Wait 2s for modem CALL_DISCONNECTED"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1642
    const/16 v13, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1643
    .local v9, "msg1":Landroid/os/Message;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    const v14, 0xffff

    if-le v13, v14, :cond_d

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    .line 1644
    :cond_d
    new-instance v13, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    invoke-direct {v13, v14}, Ljava/lang/Integer;-><init>(I)V

    iput-object v13, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1645
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallDisConnObjQ:Ljava/util/LinkedList;

    iget-object v13, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v14, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1646
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/cat/CatService;->MODEM_EVDL_TIMEOUT:I

    int-to-long v14, v14

    invoke-virtual {v13, v9, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1648
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    .line 1649
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SS-eventDownload: mNumEventDownloadCallDisConn ++.["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1650
    return-void

    .line 1652
    .end local v9    # "msg1":Landroid/os/Message;
    :cond_e
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_13

    .line 1653
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v13

    if-lez v13, :cond_11

    .line 1654
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;

    .line 1655
    .local v4, "evdlcallInfo":Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
    if-eqz v4, :cond_10

    .line 1656
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SS-eventDownload: event is CALL_CONNECTED.["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v4, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mIsMTCall:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v4, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mTi:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1657
    iget v13, v4, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mIsMTCall:I

    const/4 v14, 0x1

    if-ne v14, v13, :cond_f

    const/16 v13, 0x82

    :goto_4
    invoke-virtual {v3, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1658
    const/16 v13, 0x81

    invoke-virtual {v3, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1659
    sget-object v13, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TRANSACTION_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v12

    .line 1660
    invoke-virtual {v3, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1661
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1662
    iget v13, v4, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mTi:I

    invoke-virtual {v3, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 1657
    :cond_f
    const/16 v13, 0x83

    goto :goto_4

    .line 1664
    :cond_10
    const-string/jumbo v13, "SS-eventDownload:O null evdlcallInfo"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1667
    .end local v4    # "evdlcallInfo":Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
    :cond_11
    const/16 v13, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1668
    .restart local v9    # "msg1":Landroid/os/Message;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    const v14, 0xffff

    if-le v13, v14, :cond_12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    .line 1669
    :cond_12
    new-instance v13, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallObj:I

    invoke-direct {v13, v14}, Ljava/lang/Integer;-><init>(I)V

    iput-object v13, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1670
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallConnObjQ:Ljava/util/LinkedList;

    iget-object v13, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v14, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1671
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/cat/CatService;->MODEM_EVDL_TIMEOUT:I

    int-to-long v14, v14

    invoke-virtual {v13, v9, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1673
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    .line 1674
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SS-eventDownload: mNumEventDownloadCallConn ++.["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1675
    return-void

    .line 1678
    .end local v9    # "msg1":Landroid/os/Message;
    :cond_13
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1679
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 1682
    :cond_14
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1683
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 1692
    :cond_15
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 1695
    .local v11, "rawData":[B
    array-length v13, v11

    add-int/lit8 v8, v13, -0x2

    .line 1696
    .local v8, "len":I
    int-to-byte v13, v8

    const/4 v14, 0x1

    aput-byte v13, v11, v14

    .line 1698
    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 1700
    .local v5, "hexString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v14, 0x0

    invoke-interface {v13, v5, v14}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 1549
    return-void
.end method

.method private getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V
    .locals 2
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "cmdInput"    # Lcom/android/internal/telephony/cat/Input;

    .prologue
    .line 1371
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 1373
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1374
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1375
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1376
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1370
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cat/AppInterface;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1736
    const-string/jumbo v0, "CatService"

    const-string/jumbo v1, "call getInstance 4"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    const/4 v0, 0x0

    invoke-static {v2, v2, v2, v0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1757
    const-string/jumbo v0, "CatService"

    const-string/jumbo v1, "call getInstance 3"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    invoke-static {v2, v2, v2, p0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/cat/CatService;
    .locals 4
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 1720
    const-string/jumbo v1, "CatService"

    const-string/jumbo v2, "call getInstance 2"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    const/4 v0, 0x0

    .line 1722
    .local v0, "sim_id":I
    if-eqz p2, :cond_0

    .line 1723
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v0

    .line 1724
    const-string/jumbo v1, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get SIM id from UiccCard. sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;
    .locals 14
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p3, "slotId"    # I

    .prologue
    .line 524
    const/4 v3, 0x0

    .line 525
    .local v3, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v6, 0x0

    .line 526
    .local v6, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/4 v4, 0x0

    .line 527
    .local v4, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p2, :cond_0

    .line 531
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 532
    .local v3, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v3, :cond_0

    .line 533
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v6

    .line 534
    .local v6, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 538
    .end local v3    # "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v4    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v6    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_0
    const-string/jumbo v1, "CatService"

    const-string/jumbo v2, "call getInstance 1"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    sget-object v12, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v12

    .line 540
    const/4 v9, 0x0

    .line 541
    .local v9, "cmd":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    if-nez v1, :cond_1

    .line 542
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v11

    .line 543
    .local v11, "simCount":I
    new-array v1, v11, [Lcom/android/internal/telephony/cat/CatService;

    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    .line 544
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v11, :cond_1

    .line 545
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    const/4 v2, 0x0

    aput-object v2, v1, v10

    .line 544
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 548
    .end local v10    # "i":I
    .end local v11    # "simCount":I
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p3

    if-nez v1, :cond_4

    .line 549
    if-eqz p0, :cond_2

    if-nez v3, :cond_3

    .line 551
    :cond_2
    const-string/jumbo v1, "CatService"

    const-string/jumbo v2, "null parameters, return directly"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    const/4 v1, 0x0

    monitor-exit v12

    return-object v1

    .line 549
    :cond_3
    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    if-eqz v6, :cond_2

    .line 550
    if-eqz p2, :cond_2

    .line 555
    :try_start_1
    sget-object v13, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    new-instance v1, Lcom/android/internal/telephony/cat/CatService;

    move-object v2, p0

    move-object v5, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccCard;I)V

    aput-object v1, v13, p3

    .line 556
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "create instance "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    .end local v9    # "cmd":Ljava/lang/String;
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p3

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CatService;->registerSATcb()V

    .line 581
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v12

    return-object v1

    .line 557
    .restart local v9    # "cmd":Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_6

    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v1, v4, :cond_6

    .line 558
    const-string/jumbo v1, "CatService"

    const-string/jumbo v2, "Reinitialize the Service with SIMRecords"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 566
    const-string/jumbo v1, "CatService"

    const-string/jumbo v2, "read data from sInstSim1"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p3

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstKey:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/cat/CatService;->readCmdFromPreference(Lcom/android/internal/telephony/cat/CatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 568
    .local v9, "cmd":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_5

    .line 569
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 571
    :cond_5
    sput-object v4, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 572
    sput-object v3, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 573
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v2, v2, p3

    const/16 v5, 0x14

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v5, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 574
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p3

    invoke-static {v1, v9}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCmdFromDB(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)V

    .line 575
    const-string/jumbo v1, "CatService"

    const-string/jumbo v2, "sr changed reinitialize and return current sInstance"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 539
    .end local v9    # "cmd":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v12

    throw v1

    .line 577
    .local v9, "cmd":Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string/jumbo v1, "CatService"

    const-string/jumbo v2, "Return current sInstance"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private getPliResponse(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 1381
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1383
    .local v0, "lang":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1385
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 1386
    .local v1, "tag":I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1387
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 1388
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1379
    .end local v1    # "tag":I
    :cond_0
    return-void
.end method

.method public static getSaveNewSetUpMenuFlag(I)Z
    .locals 4
    .param p0, "sim_id"    # I

    .prologue
    .line 1815
    const/4 v0, 0x0

    .line 1816
    .local v0, "result":Z
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p0

    if-eqz v1, :cond_0

    .line 1817
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p0

    iget-boolean v0, v1, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 1818
    .local v0, "result":Z
    const-string/jumbo v1, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , mSaveNewSetUpMenu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    .end local v0    # "result":Z
    :cond_0
    return v0
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 17
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    .line 2170
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2171
    return-void

    .line 2173
    :cond_0
    const/4 v6, 0x0

    .line 2174
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v14, 0x0

    .line 2175
    .local v14, "helpRequired":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v2

    .line 2176
    .local v2, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    iget v1, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v16

    .line 2178
    .local v16, "type":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->-getcom_android_internal_telephony_cat_ResultCodeSwitchesValues()[I

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 2347
    return-void

    .line 2180
    :pswitch_0
    const/4 v14, 0x1

    .line 2193
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1

    .line 2349
    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_1
    :goto_0
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 2350
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    if-eqz v1, :cond_8

    .line 2351
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    if-eqz v1, :cond_8

    .line 2352
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    array-length v1, v1

    if-lez v1, :cond_8

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    :goto_1
    move-object/from16 v1, p0

    .line 2349
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2354
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2153
    return-void

    .line 2195
    .restart local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_3
    const-string/jumbo v1, "CatService"

    const-string/jumbo v3, "SET_UP_MENU"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_2

    const/4 v14, 0x1

    .line 2197
    :goto_2
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v14}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    .line 2198
    return-void

    .line 2196
    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .line 2200
    :pswitch_4
    const-string/jumbo v1, "CatService"

    const-string/jumbo v3, "SELECT_ITEM"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    new-instance v6, Lcom/android/internal/telephony/cat/SelectItemResponseData;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    invoke-direct {v6, v1}, Lcom/android/internal/telephony/cat/SelectItemResponseData;-><init>(I)V

    .line 2202
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_0

    .line 2205
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v15

    .line 2206
    .local v15, "input":Lcom/android/internal/telephony/cat/Input;
    iget-boolean v1, v15, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-nez v1, :cond_3

    .line 2209
    if-nez v14, :cond_1

    .line 2210
    new-instance v6, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    .line 2211
    iget-boolean v3, v15, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    iget-boolean v4, v15, Lcom/android/internal/telephony/cat/Input;->packed:Z

    .line 2210
    invoke-direct {v6, v1, v3, v4}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_0

    .line 2214
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_3
    new-instance v6, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .line 2215
    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    .line 2214
    invoke-direct {v6, v1}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Z)V

    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto/16 :goto_0

    .line 2219
    .end local v15    # "input":Lcom/android/internal/telephony/cat/Input;
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_6
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2220
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v1, :cond_4

    .line 2221
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    .line 2224
    :cond_4
    const/4 v1, 0x1

    new-array v13, v1, [B

    .line 2225
    .local v13, "additionalInfo":[B
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_5

    .line 2228
    const/4 v1, 0x1

    const/4 v3, 0x0

    aput-byte v1, v13, v3

    .line 2229
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    goto/16 :goto_0

    .line 2231
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 2234
    const/4 v1, 0x0

    const/4 v3, 0x0

    aput-byte v1, v13, v3

    .line 2235
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    goto/16 :goto_0

    .line 2245
    .end local v13    # "additionalInfo":[B
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v4

    .line 2246
    const/4 v5, 0x0

    .line 2245
    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZILandroid/os/Message;)V

    .line 2252
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2253
    return-void

    .line 2274
    :pswitch_8
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    sparse-switch v1, :sswitch_data_0

    .line 2295
    :cond_6
    :goto_3
    const/4 v6, 0x0

    .line 2296
    goto/16 :goto_0

    .line 2276
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SS-handleCmdResponse: [BACKWARD_MOVE_BY_USER] userConfirm["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2277
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    .line 2276
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2277
    const-string/jumbo v3, "] resultCode["

    .line 2276
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2277
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v3

    .line 2276
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2278
    const-string/jumbo v3, "]"

    .line 2276
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 2280
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v3

    .line 2279
    const/4 v4, 0x0

    .line 2280
    const/4 v5, 0x0

    .line 2279
    invoke-interface {v1, v4, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZILandroid/os/Message;)V

    goto :goto_3

    .line 2283
    :sswitch_1
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2284
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v1, :cond_6

    .line 2285
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    goto :goto_3

    .line 2290
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 2291
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v3

    .line 2290
    const/4 v4, 0x0

    .line 2291
    const/4 v5, 0x0

    .line 2290
    invoke-interface {v1, v4, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZILandroid/os/Message;)V

    .line 2292
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2293
    return-void

    .line 2298
    :pswitch_9
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    sparse-switch v1, :sswitch_data_1

    goto/16 :goto_0

    .line 2310
    :sswitch_3
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2311
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v1, :cond_7

    .line 2312
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->resetPowerOnSequenceFlag()V

    .line 2315
    :cond_7
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    array-length v1, v1

    if-lez v1, :cond_1

    .line 2316
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    if-eqz v1, :cond_1

    .line 2317
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 2318
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    const/4 v4, 0x0

    aget-byte v5, v1, v4

    .line 2317
    const/4 v4, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2319
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2320
    return-void

    .line 2300
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v4

    .line 2301
    const/4 v5, 0x0

    .line 2300
    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZILandroid/os/Message;)V

    .line 2307
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2308
    return-void

    .line 2328
    :pswitch_a
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v1

    iget v3, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    .line 2330
    :pswitch_b
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v3, "SS-handleCmdResponse: User don\'t accept open channel"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 2332
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v3

    .line 2331
    const/4 v4, 0x0

    .line 2332
    const/4 v5, 0x0

    .line 2331
    invoke-interface {v1, v4, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZILandroid/os/Message;)V

    .line 2333
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2334
    return-void

    .line 2340
    :pswitch_c
    iget v1, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 2341
    const-string/jumbo v1, "send TR for LAUNCH_BROWSER_ERROR"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2342
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2343
    return-void

    .line 2352
    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_c
        :pswitch_9
        :pswitch_8
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
        :pswitch_1
        :pswitch_8
        :pswitch_a
    .end packed-switch

    .line 2193
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2274
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x7 -> :sswitch_2
        0x12 -> :sswitch_0
    .end sparse-switch

    .line 2298
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_3
        0x12 -> :sswitch_4
    .end sparse-switch

    .line 2328
    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_b
    .end packed-switch
.end method

.method private handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V
    .locals 45
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;
    .param p2, "isProactiveCmd"    # Z

    .prologue
    .line 790
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    if-eqz p2, :cond_0

    .line 794
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v3, :cond_0

    .line 795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ProactiveCommand mSlotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 796
    const-string/jumbo v5, " cmdParams="

    .line 795
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->addCardLog(Ljava/lang/String;)V

    .line 801
    :cond_0
    new-instance v13, Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 803
    .local v13, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    const/16 v37, 0x0

    .line 807
    .local v37, "response":Landroid/os/Message;
    const/16 v29, 0x0

    .line 808
    .local v29, "isAlarmState":Z
    const/16 v30, 0x0

    .line 809
    .local v30, "isFlightMode":Z
    const/16 v23, 0x0

    .line 811
    .local v23, "flightMode":I
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1231
    const-string/jumbo v3, "Unsupported command"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1232
    return-void

    .line 813
    :pswitch_0
    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cat/CatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 814
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 818
    :goto_0
    const-string/jumbo v3, "CAT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSetUpMenuFromMD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 820
    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/cat/Menu;->setSetUpMenuFlag(I)V

    .line 822
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    if-nez v3, :cond_5

    .line 824
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mIsProactiveCmdResponsed:Z

    .line 1234
    .end local v29    # "isAlarmState":Z
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1235
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/cat/CatService;->broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 789
    return-void

    .line 816
    .restart local v29    # "isAlarmState":Z
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_3
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0

    .line 820
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 827
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    .line 828
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    if-nez v3, :cond_6

    .line 829
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_2

    .line 830
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 831
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 832
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 831
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_2

    .line 837
    :pswitch_1
    const-string/jumbo v3, "ro.mtk_bsp_package"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 838
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    if-eqz v3, :cond_8

    .line 839
    const-string/jumbo v3, "[CacheDT cache DISPLAY_TEXT"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 843
    const-string/jumbo v4, "dialog_sequence_settings"

    .line 844
    const/4 v5, 0x0

    .line 841
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v39

    .line 845
    .local v39, "seqValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "seqValue in CatService, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 847
    const/4 v3, 0x2

    move/from16 v0, v39

    if-eq v0, v3, :cond_8

    .line 848
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 849
    if-nez v39, :cond_7

    .line 852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 853
    const-string/jumbo v4, "dialog_sequence_settings"

    .line 854
    const/4 v5, 0x2

    .line 851
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 856
    :cond_7
    const-string/jumbo v3, "[CacheDT set current cmd as DISPLAY_TEXT"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 857
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 858
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->CACHED_DISPLAY_TIMEOUT:I

    int-to-long v4, v3

    const/16 v3, 0x2e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(IJ)V

    .line 859
    return-void

    .line 872
    .end local v39    # "seqValue":I
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->isAlarmBoot()Z

    move-result v29

    .line 874
    .local v29, "isAlarmState":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 875
    const-string/jumbo v4, "airplane_mode_on"

    .line 874
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v23

    .line 880
    :goto_3
    if-eqz v23, :cond_9

    const/16 v30, 0x1

    .line 881
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAlarmState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isFlightMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 882
    const-string/jumbo v4, ", flightMode = "

    .line 881
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 884
    if-eqz v29, :cond_a

    if-eqz v30, :cond_a

    .line 885
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 886
    return-void

    .line 876
    :catch_0
    move-exception v16

    .line 877
    .local v16, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "fail to get property from Settings"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 878
    const/16 v23, 0x0

    goto :goto_3

    .line 880
    .end local v16    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_9
    const/16 v30, 0x0

    goto :goto_4

    .line 890
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->checkSetupWizardInstalled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 891
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    .line 892
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 891
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 893
    return-void

    .line 897
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    if-eqz v3, :cond_c

    .line 898
    const-string/jumbo v3, "[IVSR send TR directly"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 899
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 900
    return-void

    .line 903
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z

    if-eqz v3, :cond_d

    .line 904
    const-string/jumbo v3, "[Sim Recovery send TR directly"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 905
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 906
    return-void

    .line 908
    :cond_d
    const-string/jumbo v3, "persist.service.cat.dt.disable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 909
    const-string/jumbo v3, "Filter DISPLAY_TEXT command."

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 910
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 911
    return-void

    .line 917
    .local v29, "isAlarmState":Z
    :pswitch_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mIsProactiveCmdResponsed:Z

    .line 918
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 919
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_e

    .line 920
    const-string/jumbo v3, "remove event list because of SIM Refresh type 4"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 921
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    goto/16 :goto_2

    .line 923
    :cond_e
    const-string/jumbo v3, "Do not to remove event list because SIM Refresh type not 4"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v3, p1

    .line 928
    check-cast v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_f

    move-object/from16 v3, p1

    .line 929
    check-cast v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v3, :cond_f

    move-object/from16 v3, p1

    .line 930
    check-cast v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 931
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    .line 932
    const/4 v5, 0x0

    .line 933
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 931
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 934
    return-void

    .line 936
    :cond_f
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    .line 937
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 936
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_2

    .line 941
    :pswitch_4
    const/4 v2, 0x0

    .line 943
    .local v2, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    .line 945
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 946
    .local v11, "cal":Ljava/util/Calendar;
    const/16 v44, 0x0

    .line 947
    .local v44, "temp":I
    const/16 v27, 0x0

    .line 948
    .local v27, "hibyte":I
    const/16 v32, 0x0

    .line 949
    .local v32, "lobyte":I
    const/4 v3, 0x7

    new-array v14, v3, [B

    .line 951
    .local v14, "datetime":[B
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit16 v0, v3, -0x7d0

    move/from16 v44, v0

    .line 952
    div-int/lit8 v27, v44, 0xa

    .line 953
    rem-int/lit8 v3, v44, 0xa

    shl-int/lit8 v32, v3, 0x4

    .line 954
    or-int v3, v32, v27

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v14, v4

    .line 956
    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v44, v3, 0x1

    .line 957
    div-int/lit8 v27, v44, 0xa

    .line 958
    rem-int/lit8 v3, v44, 0xa

    shl-int/lit8 v32, v3, 0x4

    .line 959
    or-int v3, v32, v27

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v14, v4

    .line 961
    const/4 v3, 0x5

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v44

    .line 962
    div-int/lit8 v27, v44, 0xa

    .line 963
    rem-int/lit8 v3, v44, 0xa

    shl-int/lit8 v32, v3, 0x4

    .line 964
    or-int v3, v32, v27

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v14, v4

    .line 966
    const/16 v3, 0xb

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v44

    .line 967
    div-int/lit8 v27, v44, 0xa

    .line 968
    rem-int/lit8 v3, v44, 0xa

    shl-int/lit8 v32, v3, 0x4

    .line 969
    or-int v3, v32, v27

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v14, v4

    .line 971
    const/16 v3, 0xc

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v44

    .line 972
    div-int/lit8 v27, v44, 0xa

    .line 973
    rem-int/lit8 v3, v44, 0xa

    shl-int/lit8 v32, v3, 0x4

    .line 974
    or-int v3, v32, v27

    int-to-byte v3, v3

    const/4 v4, 0x4

    aput-byte v3, v14, v4

    .line 976
    const/16 v3, 0xd

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v44

    .line 977
    div-int/lit8 v27, v44, 0xa

    .line 978
    rem-int/lit8 v3, v44, 0xa

    shl-int/lit8 v32, v3, 0x4

    .line 979
    or-int v3, v32, v27

    int-to-byte v3, v3

    const/4 v4, 0x5

    aput-byte v3, v14, v4

    .line 982
    const/16 v3, 0xf

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const v4, 0xdbba0

    div-int v44, v3, v4

    .line 983
    div-int/lit8 v27, v44, 0xa

    .line 984
    rem-int/lit8 v3, v44, 0xa

    shl-int/lit8 v32, v3, 0x4

    .line 985
    or-int v3, v32, v27

    int-to-byte v3, v3

    const/4 v4, 0x6

    aput-byte v3, v14, v4

    .line 987
    new-instance v2, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;

    .end local v2    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v3, 0x0

    aget-byte v3, v14, v3

    .line 988
    const/4 v4, 0x1

    aget-byte v4, v14, v4

    const/4 v5, 0x2

    aget-byte v5, v14, v5

    const/4 v6, 0x3

    aget-byte v6, v14, v6

    const/4 v7, 0x4

    aget-byte v7, v14, v7

    const/4 v8, 0x5

    aget-byte v8, v14, v8

    .line 989
    const/4 v9, 0x6

    aget-byte v9, v14, v9

    .line 987
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;-><init>(IIIIIII)V

    .line 991
    .local v2, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    .line 992
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object v8, v2

    .line 991
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 994
    return-void

    .line 995
    .end local v11    # "cal":Ljava/util/Calendar;
    .end local v14    # "datetime":[B
    .end local v27    # "hibyte":I
    .end local v32    # "lobyte":I
    .end local v44    # "temp":I
    .local v2, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_10
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_11

    .line 997
    const/4 v3, 0x2

    new-array v0, v3, [B

    move-object/from16 v31, v0

    .line 998
    .local v31, "lang":[B
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v33

    .line 1000
    .local v33, "locale":Ljava/util/Locale;
    invoke-virtual/range {v33 .. v33}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v31, v4

    .line 1001
    invoke-virtual/range {v33 .. v33}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v31, v4

    .line 1003
    new-instance v2, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;

    .end local v2    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v31

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;-><init>([B)V

    .line 1005
    .local v2, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    .line 1006
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object v8, v2

    .line 1005
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1008
    return-void

    .line 1011
    .end local v31    # "lang":[B
    .end local v33    # "locale":Ljava/util/Locale;
    .local v2, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_11
    return-void

    .end local v2    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_5
    move-object/from16 v3, p1

    .line 1013
    check-cast v3, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v3, p1

    .line 1014
    check-cast v3, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string/jumbo v4, "Default Message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1013
    if-eqz v3, :cond_2

    .line 1015
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v4, 0x10404a8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v34

    .line 1016
    .local v34, "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface/range {v34 .. v34}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .line 1022
    .end local v34    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->isAlarmBoot()Z

    move-result v29

    .line 1024
    .local v29, "isAlarmState":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1025
    const-string/jumbo v4, "airplane_mode_on"

    .line 1024
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v23

    .line 1030
    :goto_5
    if-eqz v23, :cond_12

    const/16 v30, 0x1

    .line 1031
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAlarmState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isFlightMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1032
    const-string/jumbo v4, ", flightMode = "

    .line 1031
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    if-eqz v29, :cond_2

    if-eqz v30, :cond_2

    .line 1034
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1035
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 1034
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1036
    return-void

    .line 1026
    :catch_1
    move-exception v16

    .line 1027
    .restart local v16    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "fail to get property from Settings"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    const/16 v23, 0x0

    goto :goto_5

    .line 1030
    .end local v16    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_12
    const/16 v30, 0x0

    goto :goto_6

    .line 1041
    .local v29, "isAlarmState":Z
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_14

    :cond_13
    const/4 v3, 0x1

    :goto_7
    if-nez v3, :cond_2

    .line 1045
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1046
    return-void

    .line 1042
    :cond_14
    const-string/jumbo v3, "READY"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1041
    if-nez v3, :cond_13

    .line 1043
    const-string/jumbo v3, "IMSI"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1041
    if-nez v3, :cond_13

    .line 1044
    const-string/jumbo v3, "LOADED"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_7

    .line 1053
    :pswitch_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mIsProactiveCmdResponsed:Z

    move-object/from16 v3, p1

    .line 1054
    check-cast v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v3, p1

    .line 1055
    check-cast v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string/jumbo v4, "Default Message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1054
    if-eqz v3, :cond_2

    .line 1056
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v4, 0x10404a7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v34

    .line 1057
    .restart local v34    # "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface/range {v34 .. v34}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .line 1061
    .end local v34    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_9
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mIsProactiveCmdResponsed:Z

    goto/16 :goto_2

    :pswitch_a
    move-object/from16 v3, p1

    .line 1064
    check-cast v3, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v3, p1

    .line 1065
    check-cast v3, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string/jumbo v4, "Default Message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1064
    if-eqz v3, :cond_2

    .line 1066
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v4, 0x10404a9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v34

    .line 1067
    .restart local v34    # "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface/range {v34 .. v34}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .line 1072
    .end local v34    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mBipService:Lcom/android/internal/telephony/cat/BipService;

    invoke-virtual {v3, v13}, Lcom/android/internal/telephony/cat/BipService;->setSetupEventList(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1082
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mIsProactiveCmdResponsed:Z

    .line 1083
    check-cast p1, Lcom/android/internal/telephony/cat/SetupEventListParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/SetupEventListParams;->eventList:[B

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mEventList:[B

    .line 1084
    return-void

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_c
    move-object/from16 v12, p1

    .line 1089
    check-cast v12, Lcom/android/internal/telephony/cat/BIPClientParams;

    .line 1095
    .local v12, "cmd":Lcom/android/internal/telephony/cat/BIPClientParams;
    const/16 v36, 0x0

    .line 1097
    .local v36, "noAlphaUsrCnf":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1098
    const v4, 0x112007b

    .line 1097
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v36

    .line 1102
    .end local v36    # "noAlphaUsrCnf":Z
    :goto_8
    iget-object v3, v12, Lcom/android/internal/telephony/cat/BIPClientParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_18

    iget-boolean v3, v12, Lcom/android/internal/telephony/cat/BIPClientParams;->mHasAlphaId:Z

    if-nez v3, :cond_15

    if-eqz v36, :cond_18

    .line 1103
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with null alpha id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1105
    if-eqz p2, :cond_17

    .line 1106
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1110
    :cond_16
    :goto_9
    return-void

    .line 1099
    .restart local v36    # "noAlphaUsrCnf":Z
    :catch_2
    move-exception v15

    .line 1100
    .local v15, "e":Landroid/content/res/Resources$NotFoundException;
    const/16 v36, 0x0

    goto :goto_8

    .line 1107
    .end local v15    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v36    # "noAlphaUsrCnf":Z
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v3, v4, :cond_16

    .line 1108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v3, v5, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZILandroid/os/Message;)V

    goto :goto_9

    .line 1113
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    if-nez v3, :cond_19

    .line 1114
    const-string/jumbo v3, "No STK application found."

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1115
    if-eqz p2, :cond_19

    .line 1116
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 1117
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1118
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 1116
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1119
    return-void

    .line 1128
    :cond_19
    if-eqz p2, :cond_2

    .line 1129
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v3, v4, :cond_1a

    .line 1130
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v3, v4, :cond_1b

    .line 1132
    :cond_1a
    :goto_a
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_2

    .line 1131
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v3, v4, :cond_2

    goto :goto_a

    .end local v12    # "cmd":Lcom/android/internal/telephony/cat/BIPClientParams;
    :pswitch_d
    move-object/from16 v3, p1

    .line 1136
    check-cast v3, Lcom/android/internal/telephony/cat/ActivateParams;

    iget v3, v3, Lcom/android/internal/telephony/cat/ActivateParams;->mTarget:I

    const/4 v4, 0x1

    if-ne v4, v3, :cond_22

    .line 1138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activate UICC-CLF interface mSlotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1139
    const/16 v38, 0x0

    .line 1143
    .local v38, "result":Z
    const/16 v35, 0x0

    .line 1144
    .local v35, "nfcAdapter":Ljava/lang/Class;
    const/16 v28, 0x0

    .line 1145
    .local v28, "infcAdapterGsmaExtras":Ljava/lang/Class;
    const/16 v22, 0x0

    .line 1146
    .local v22, "field":Ljava/lang/reflect/Field;
    const/16 v24, 0x0

    .line 1147
    .local v24, "getDefaultAdapter":Ljava/lang/reflect/Method;
    const/16 v25, 0x0

    .line 1148
    .local v25, "getNfcAdapterGsmaExtrasInterface":Ljava/lang/reflect/Method;
    const/16 v40, 0x0

    .line 1149
    .local v40, "setNfcSwpActive":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    .line 1150
    .local v10, "adapter":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 1153
    .local v26, "gsmaExtras":Ljava/lang/Object;
    :try_start_3
    const-string/jumbo v3, "android.nfc.NfcAdapter"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v35

    .line 1155
    .local v35, "nfcAdapter":Ljava/lang/Class;
    const-string/jumbo v3, "android.nfc.INfcAdapterGsmaExtras"

    .line 1154
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v28

    .line 1157
    .local v28, "infcAdapterGsmaExtras":Ljava/lang/Class;
    const-string/jumbo v3, "SIM_1"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v22

    .line 1158
    .local v22, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v41

    .line 1159
    .local v41, "sim1":I
    const-string/jumbo v3, "SIM_2"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v22

    .line 1160
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v42

    .line 1161
    .local v42, "sim2":I
    const-string/jumbo v3, "SIM_3"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v22

    .line 1162
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v43

    .line 1165
    .local v43, "sim3":I
    const-string/jumbo v3, "getDefaultAdapter"

    .line 1164
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 1165
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1164
    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v24

    .line 1166
    .local v24, "getDefaultAdapter":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1167
    if-nez v10, :cond_1c

    .line 1168
    const-string/jumbo v3, "Cannot get NFC Default Adapter !!!"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 1170
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 1169
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1171
    return-void

    .line 1175
    :cond_1c
    const-string/jumbo v3, "getNfcAdapterGsmaExtrasInterface"

    .line 1174
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v25

    .line 1176
    .local v25, "getNfcAdapterGsmaExtrasInterface":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .line 1177
    if-nez v26, :cond_1d

    .line 1178
    const-string/jumbo v3, "NfcAdapterGsmaExtras service is null !!!"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1179
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 1180
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 1179
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1181
    return-void

    .line 1185
    :cond_1d
    const-string/jumbo v3, "setNfcSwpActive"

    .line 1184
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 1185
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1184
    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v40

    .line 1187
    .local v40, "setNfcSwpActive":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    if-nez v3, :cond_1f

    .line 1188
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    .line 1195
    .end local v38    # "result":Z
    :cond_1e
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNfcSwpActive result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1196
    if-eqz v38, :cond_21

    .line 1197
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 1198
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 1197
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1229
    .end local v10    # "adapter":Ljava/lang/Object;
    .end local v22    # "field":Ljava/lang/reflect/Field;
    .end local v24    # "getDefaultAdapter":Ljava/lang/reflect/Method;
    .end local v25    # "getNfcAdapterGsmaExtrasInterface":Ljava/lang/reflect/Method;
    .end local v26    # "gsmaExtras":Ljava/lang/Object;
    .end local v28    # "infcAdapterGsmaExtras":Ljava/lang/Class;
    .end local v35    # "nfcAdapter":Ljava/lang/Class;
    .end local v40    # "setNfcSwpActive":Ljava/lang/reflect/Method;
    .end local v41    # "sim1":I
    .end local v42    # "sim2":I
    .end local v43    # "sim3":I
    :goto_c
    return-void

    .line 1189
    .restart local v10    # "adapter":Ljava/lang/Object;
    .restart local v22    # "field":Ljava/lang/reflect/Field;
    .restart local v24    # "getDefaultAdapter":Ljava/lang/reflect/Method;
    .restart local v25    # "getNfcAdapterGsmaExtrasInterface":Ljava/lang/reflect/Method;
    .restart local v26    # "gsmaExtras":Ljava/lang/Object;
    .restart local v28    # "infcAdapterGsmaExtras":Ljava/lang/Class;
    .restart local v35    # "nfcAdapter":Ljava/lang/Class;
    .restart local v38    # "result":Z
    .restart local v40    # "setNfcSwpActive":Ljava/lang/reflect/Method;
    .restart local v41    # "sim1":I
    .restart local v42    # "sim2":I
    .restart local v43    # "sim3":I
    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const/4 v4, 0x1

    if-ne v4, v3, :cond_20

    .line 1190
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    .local v38, "result":Z
    goto :goto_b

    .line 1191
    .local v38, "result":Z
    :cond_20
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const/4 v4, 0x2

    if-ne v4, v3, :cond_1e

    .line 1192
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    .local v38, "result":Z
    goto :goto_b

    .line 1200
    .end local v38    # "result":Z
    :cond_21
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 1201
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 1200
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_c

    .line 1203
    .end local v10    # "adapter":Ljava/lang/Object;
    .end local v22    # "field":Ljava/lang/reflect/Field;
    .end local v24    # "getDefaultAdapter":Ljava/lang/reflect/Method;
    .end local v25    # "getNfcAdapterGsmaExtrasInterface":Ljava/lang/reflect/Method;
    .end local v26    # "gsmaExtras":Ljava/lang/Object;
    .end local v28    # "infcAdapterGsmaExtras":Ljava/lang/Class;
    .end local v35    # "nfcAdapter":Ljava/lang/Class;
    .end local v40    # "setNfcSwpActive":Ljava/lang/reflect/Method;
    .end local v41    # "sim1":I
    .end local v42    # "sim2":I
    .end local v43    # "sim3":I
    :catch_3
    move-exception v17

    .line 1204
    .local v17, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activate UICC-CLF failed !!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1205
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 1206
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 1205
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_c

    .line 1219
    .end local v17    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_4
    move-exception v21

    .line 1220
    .local v21, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activate UICC-CLF failed !!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1221
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 1222
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 1221
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_c

    .line 1215
    .end local v21    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v18

    .line 1216
    .local v18, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activate UICC-CLF failed !!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1217
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 1218
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 1217
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_c

    .line 1211
    .end local v18    # "ex":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v20

    .line 1212
    .local v20, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activate UICC-CLF failed !!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1213
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 1214
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 1213
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_c

    .line 1207
    .end local v20    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_7
    move-exception v19

    .line 1208
    .local v19, "ex":Ljava/lang/NoSuchFieldException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activate UICC-CLF failed !!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1209
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 1210
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 1209
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_c

    .line 1225
    .end local v19    # "ex":Ljava/lang/NoSuchFieldException;
    :cond_22
    const-string/jumbo v3, "Unsupport target or interface !!!"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1226
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 1227
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 1226
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_c

    .line 811
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_c
        :pswitch_9
        :pswitch_4
        :pswitch_c
        :pswitch_2
        :pswitch_6
        :pswitch_c
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private handleDBHandler(I)V
    .locals 3
    .param p1, "sim_id"    # I

    .prologue
    .line 2149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleDBHandler, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2150
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstKey:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cat/CatService;->saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    return-void
.end method

.method private handleEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 6
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    .line 2144
    iget v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEvent:I

    iget v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mSourceId:I

    iget v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mDestinationId:I

    .line 2145
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mOneShot:Z

    move-object v0, p0

    .line 2144
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    .line 2143
    return-void
.end method

.method private static handleProactiveCmdFromDB(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)V
    .locals 4
    .param p0, "inst"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1763
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1764
    if-nez p1, :cond_0

    .line 1765
    const-string/jumbo v1, "CatService"

    const-string/jumbo v2, "handleProactiveCmdFromDB: cmd = null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    return-void

    .line 1769
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->default_send_setupmenu_tr:Z

    .line 1771
    const-string/jumbo v1, "CatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " handleProactiveCmdFromDB: cmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    new-instance v0, Lcom/android/internal/telephony/cat/RilMessage;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    .line 1773
    .local v0, "rilMsg":Lcom/android/internal/telephony/cat/RilMessage;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 1774
    const-string/jumbo v1, "CatService"

    const-string/jumbo v2, "handleProactiveCmdFromDB: over"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    .end local v0    # "rilMsg":Lcom/android/internal/telephony/cat/RilMessage;
    :goto_0
    return-void

    .line 1776
    :cond_1
    const-string/jumbo v1, "CatService"

    const-string/jumbo v2, "BSP package does not support db cache."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 9
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 675
    if-nez p1, :cond_0

    .line 676
    return-void

    .line 680
    :cond_0
    const/4 v7, 0x0

    .line 681
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    sparse-switch v1, :sswitch_data_0

    .line 674
    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 683
    .restart local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :sswitch_1
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    .line 684
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_1

    .line 685
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_2

    .line 686
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 688
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "event notify error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_4

    .line 690
    iget-object v1, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_3

    .line 691
    iget-object v1, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    .line 695
    :cond_3
    :goto_1
    const-string/jumbo v1, "notify user text message even though get icon fail"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    .line 698
    :cond_4
    iget-object v1, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 699
    const-string/jumbo v1, "Open Channel with ResultCode"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 692
    :cond_5
    iget-object v1, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_3

    .line 693
    iget-object v1, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_4

    goto :goto_1

    .line 708
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :sswitch_2
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 709
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mIsProactiveCmdResponsed:Z

    .line 712
    :cond_6
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_1

    .line 724
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_7

    .line 725
    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    .line 726
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mSetUpMenuFromMD:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    .line 727
    invoke-direct {p0, v7, v3}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto/16 :goto_0

    .line 713
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :catch_0
    move-exception v8

    .line 715
    .local v8, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v1, "Fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_1

    .line 718
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 728
    .end local v8    # "e":Ljava/lang/ClassCastException;
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_7
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_8

    .line 729
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/CatService;->ResultCodeFlag:I

    .line 730
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mSetUpMenuFromMD:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSetUpMenuFromMD:Z

    .line 731
    invoke-direct {p0, v7, v3}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto/16 :goto_0

    .line 736
    :cond_8
    const-string/jumbo v1, "CAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SS-handleMessage: invalid proactive command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 737
    iget-object v3, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 736
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v2, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 744
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :sswitch_3
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    .line 745
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_1

    .line 746
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto/16 :goto_0

    .line 750
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :sswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    goto/16 :goto_0

    .line 681
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x5 -> :sswitch_3
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method private handleSessionEnd()V
    .locals 3

    .prologue
    .line 1252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SESSION END on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1254
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1255
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1256
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1257
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1251
    return-void
.end method

.method private isAlarmBoot()Z
    .locals 2

    .prologue
    .line 2541
    const-string/jumbo v1, "sys.boot.reason"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2542
    .local v0, "bootReason":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSetUpMenuCmd(Ljava/lang/String;)Z
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x35

    const/16 v5, 0x32

    const/4 v4, 0x0

    .line 1785
    const/4 v1, 0x0

    .line 1787
    .local v1, "validCmd":Z
    if-nez p1, :cond_0

    .line 1788
    return v4

    .line 1791
    :cond_0
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x38

    if-ne v2, v3, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_2

    .line 1792
    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_1

    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_1

    .line 1793
    const/4 v1, 0x1

    .line 1806
    :cond_1
    :goto_0
    return v1

    .line 1796
    :cond_2
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_1

    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v6, :cond_1

    .line 1797
    const/4 v1, 0x1

    goto :goto_0

    .line 1800
    :catch_0
    move-exception v0

    .line 1801
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IndexOutOfBoundsException isSetUpMenuCmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1802
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 1803
    return v4
.end method

.method private isStkAppInstalled()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2467
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.stk.command"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2468
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2470
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2471
    .local v0, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 2473
    .local v2, "numReceiver":I
    :goto_0
    if-lez v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    .line 2471
    .end local v2    # "numReceiver":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "numReceiver":I
    goto :goto_0
.end method

.method private isSupportedSetupEventCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 7
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 765
    const/4 v1, 0x1

    .line 767
    .local v1, "flag":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v2

    iget-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 768
    .local v0, "eventVal":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    packed-switch v0, :pswitch_data_0

    .line 776
    :pswitch_0
    const/4 v1, 0x0

    .line 767
    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 779
    .end local v0    # "eventVal":I
    :cond_0
    return v1

    .line 769
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static readCmdFromPreference(Lcom/android/internal/telephony/cat/CatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "inst"    # Lcom/android/internal/telephony/cat/CatService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2736
    const/4 v1, 0x0

    .line 2737
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, ""

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2739
    .local v0, "cmd":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 2740
    const-string/jumbo v2, "CatService"

    const-string/jumbo v3, "readCmdFromPreference with null instance"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2741
    return-object v4

    .line 2744
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2745
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mReadFromPreferenceDone:Z

    if-nez v2, :cond_2

    .line 2746
    const-string/jumbo v2, "set_up_menu"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2747
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, ""

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2748
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mReadFromPreferenceDone:Z

    .line 2749
    const-string/jumbo v2, "CatService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readCmdFromPreference, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    monitor-exit v3

    .line 2754
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 2755
    const/4 v0, 0x0

    .line 2757
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 2751
    .restart local v0    # "cmd":Ljava/lang/String;
    .local v1, "preferences":Landroid/content/SharedPreferences;
    :cond_2
    :try_start_1
    const-string/jumbo v2, "CatService"

    const-string/jumbo v4, "readCmdFromPreference, do not read again"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2744
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private registerPowerOnSequenceObserver()V
    .locals 4

    .prologue
    .line 2675
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2676
    const-string/jumbo v1, "call registerPowerOnSequenceObserver"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2677
    const-string/jumbo v1, "dialog_sequence_settings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2678
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2679
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mPowerOnSequenceObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 2678
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2680
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    .line 2674
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private registerSATcb()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1704
    const-string/jumbo v0, "CatService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSATcb, mNeedRegisterAgain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    if-eqz v0, :cond_1

    .line 1707
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1708
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1709
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1710
    const-string/jumbo v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1711
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkEvdlCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1713
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkSetupMenuReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1714
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    .line 1703
    :cond_1
    return-void
.end method

.method private removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z
    .locals 5
    .param p1, "menu"    # Lcom/android/internal/telephony/cat/Menu;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2133
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 2134
    return v3

    .line 2136
    :catch_0
    move-exception v0

    .line 2137
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "Unable to get Menu\'s items size"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2138
    return v3

    .line 2140
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    return v4
.end method

.method private resetPowerOnSequenceFlag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2694
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2696
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2697
    const-string/jumbo v2, "dialog_sequence_settings"

    .line 2695
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2699
    .local v0, "seqValue":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "call resetPowerOnSequenceFlag, seqValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2701
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2704
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2705
    const-string/jumbo v2, "dialog_sequence_settings"

    .line 2703
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2708
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->mHasCachedDTCmd:Z

    .line 2693
    .end local v0    # "seqValue":I
    :cond_1
    return-void
.end method

.method private static saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    .line 2724
    const/4 v1, 0x0

    .line 2725
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 2726
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2727
    :try_start_0
    const-string/jumbo v2, "CatService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveCmdToPreference, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    const-string/jumbo v2, "set_up_menu"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2729
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2730
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2731
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 2723
    return-void

    .line 2726
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private sendMenuSelection(IZ)V
    .locals 9
    .param p1, "menuId"    # I
    .param p2, "helpRequired"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1394
    const-string/jumbo v5, "CatService"

    const-string/jumbo v6, "sendMenuSelection SET_UP_MENU"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1399
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .line 1400
    .local v4, "tag":I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1403
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1406
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1407
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1408
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1409
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1410
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1413
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1414
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1415
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1416
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1419
    if-eqz p2, :cond_0

    .line 1420
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 1421
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1422
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1425
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1428
    .local v3, "rawData":[B
    array-length v5, v3

    add-int/lit8 v2, v5, -0x2

    .line 1429
    .local v2, "len":I
    int-to-byte v5, v2

    aput-byte v5, v3, v8

    .line 1431
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1433
    .local v1, "hexString":Ljava/lang/String;
    const-string/jumbo v5, "CatService"

    const-string/jumbo v6, "sendMenuSelection before"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 1435
    const-string/jumbo v5, "CatService"

    const-string/jumbo v6, "sendMenuSelection after"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    const/16 v5, 0xf

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut(I)V

    .line 1437
    const-string/jumbo v5, "[Reset Disable Display Text flag because MENU_SELECTION"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1438
    iput-boolean v7, p0, Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z

    .line 1392
    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 9
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "includeAdditionalInfo"    # Z
    .param p4, "additionalInfo"    # I
    .param p5, "resp"    # Lcom/android/internal/telephony/cat/ResponseData;

    .prologue
    const/4 v8, 0x0

    .line 1265
    if-nez p1, :cond_0

    .line 1266
    const-string/jumbo v6, "SS-sendTR: cmdDet is null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1267
    return-void

    .line 1270
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v6

    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    if-ne v6, v7, :cond_1

    sget-boolean v6, Lcom/android/internal/telephony/cat/CatService;->mQueryMenuFlag:Z

    if-eqz v6, :cond_1

    .line 1271
    const-string/jumbo v6, "Ignore response from query menu case"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1272
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/internal/telephony/cat/CatService;->mQueryMenuFlag:Z

    .line 1273
    return-void

    .line 1276
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SS-sendTR: command type is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1277
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1279
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 1280
    .local v1, "cmdInput":Lcom/android/internal/telephony/cat/Input;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v6, :cond_2

    .line 1281
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v1

    .line 1283
    .end local v1    # "cmdInput":Lcom/android/internal/telephony/cat/Input;
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CatService;->mIsProactiveCmdResponsed:Z

    .line 1286
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    .line 1287
    .local v5, "tag":I
    iget-boolean v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v6, :cond_3

    .line 1288
    or-int/lit16 v5, v5, 0x80

    .line 1290
    :cond_3
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1291
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1292
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1293
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1294
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1303
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 1304
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1305
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1306
    const/16 v6, 0x82

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1307
    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1310
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    .line 1311
    iget-boolean v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v6, :cond_4

    .line 1312
    or-int/lit16 v5, v5, 0x80

    .line 1314
    :cond_4
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1315
    if-eqz p3, :cond_6

    const/4 v3, 0x2

    .line 1316
    .local v3, "length":I
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1317
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1320
    if-eqz p3, :cond_5

    .line 1321
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1325
    :cond_5
    if-eqz p5, :cond_7

    .line 1326
    const-string/jumbo v6, "SS-sendTR: write response data into TR"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 1332
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1333
    .local v4, "rawData":[B
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1335
    .local v2, "hexString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TERMINAL RESPONSE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1338
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v2, v8}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    .line 1263
    return-void

    .line 1315
    .end local v2    # "hexString":Ljava/lang/String;
    .end local v3    # "length":I
    .end local v4    # "rawData":[B
    :cond_6
    const/4 v3, 0x1

    .restart local v3    # "length":I
    goto :goto_0

    .line 1329
    :cond_7
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cat/CatService;->encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_1
.end method

.method private sendTerminalResponseByCurrentCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 7
    .param p1, "catCmd"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 586
    if-nez p1, :cond_0

    .line 587
    const-string/jumbo v0, "catCmd is null."

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    return-void

    .line 590
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v6

    .line 591
    .local v6, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Send TR for cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 601
    :pswitch_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 585
    :goto_0
    return-void

    .line 595
    :pswitch_1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 598
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    invoke-interface {v0, v3, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZILandroid/os/Message;)V

    goto :goto_0

    .line 592
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private unregisterPowerOnSequenceObserver()V
    .locals 2

    .prologue
    .line 2685
    const-string/jumbo v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2686
    const-string/jumbo v0, "call unregisterPowerOnSequenceObserver"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2687
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2688
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mPowerOnSequenceObserver:Landroid/database/ContentObserver;

    .line 2687
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2689
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut(I)V

    .line 2684
    :cond_0
    return-void
.end method

.method private validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .locals 3
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    .line 2117
    const/4 v0, 0x0

    .line 2119
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_1

    .line 2121
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2122
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SS-validateResponse: ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2123
    const-string/jumbo v2, " ["

    .line 2122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2123
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 2122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2124
    const-string/jumbo v2, "/"

    .line 2122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2124
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 2122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2124
    const-string/jumbo v2, "]"

    .line 2122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2125
    return v0

    .line 2121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2127
    :cond_1
    const-string/jumbo v1, "SS-validateResponse: mCurrentCmd is null"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2128
    const/4 v1, 0x0

    return v1
.end method

.method private writeCallDisConnED(Ljava/io/ByteArrayOutputStream;)V
    .locals 8
    .param p1, "buffer"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1441
    const-string/jumbo v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1442
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;

    .line 1443
    .local v0, "evdlcallInfo":Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
    const/4 v2, 0x0

    .line 1445
    .local v2, "tag":I
    if-eqz v0, :cond_4

    .line 1446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SS-eventDownload: event is CALL_DISCONNECTED.["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mIsFarEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mTi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCause:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1447
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mIsFarEnd:I

    if-ne v7, v4, :cond_1

    const/16 v4, 0x83

    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1448
    const/16 v4, 0x81

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1449
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TRANSACTION_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    .line 1450
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1451
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1452
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mTi:I

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1453
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    if-nez v4, :cond_2

    .line 1454
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    or-int/lit16 v2, v4, 0x80

    .line 1455
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1456
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1440
    .end local v0    # "evdlcallInfo":Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
    .end local v2    # "tag":I
    :cond_0
    :goto_1
    return-void

    .line 1447
    .restart local v0    # "evdlcallInfo":Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
    .restart local v2    # "tag":I
    :cond_1
    const/16 v4, 0x82

    goto :goto_0

    .line 1457
    :cond_2
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    const/16 v5, 0xff

    if-eq v5, v4, :cond_3

    .line 1458
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    or-int/lit16 v2, v4, 0x80

    .line 1459
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1460
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1461
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_0

    .line 1462
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCause:I

    mul-int/lit8 v5, v1, 0x8

    shr-int/2addr v4, v5

    and-int/lit16 v3, v4, 0xff

    .line 1463
    .local v3, "temp":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SS-eventDownload:cause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1464
    iget v4, v0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCause:I

    mul-int/lit8 v5, v1, 0x8

    shr-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1461
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1467
    .end local v1    # "i":I
    .end local v3    # "temp":I
    :cond_3
    const-string/jumbo v4, "SS-eventDownload:no cause value"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1470
    :cond_4
    const-string/jumbo v4, "SS-eventDownload:X null evdlcallInfo"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method cancelTimeOut(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cancelTimeOut, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", msg id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 608
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 609
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disposing CatService object : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->CatServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mStkIdleScreenAvailableReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 614
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mUtkSetupEventListReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 617
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIsProactiveCmdResponsed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_1

    .line 618
    const-string/jumbo v0, "Send TR for the last pending commands."

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponseByCurrentCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 623
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    .line 627
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    .line 628
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallSetUp(Landroid/os/Handler;)V

    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V

    .line 631
    const-string/jumbo v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkEvdlCall(Landroid/os/Handler;)V

    .line 634
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkSetupMenuReset(Landroid/os/Handler;)V

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNeedRegisterAgain:Z

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 638
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_3

    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 642
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_4

    .line 643
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 645
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->dispose()V

    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 649
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mBipService:Lcom/android/internal/telephony/cat/BipService;

    if-eqz v0, :cond_5

    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mBipService:Lcom/android/internal/telephony/cat/BipService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipService;->dispose()V

    .line 658
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->handleDBHandler(I)V

    .line 659
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_6

    .line 660
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 661
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const/4 v3, 0x0

    aput-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_0
    monitor-exit v1

    .line 607
    return-void

    .line 663
    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error: invaild slot id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 671
    const-string/jumbo v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 2

    .prologue
    .line 2715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getCmdMessage, command type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2716
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdMessage:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0

    .line 2715
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .prologue
    .line 2720
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1827
    const/4 v12, 0x0

    .line 1828
    .local v12, "cmd":Lcom/android/internal/telephony/cat/CatCmdMessage;
    const/16 v25, 0x0

    .line 1829
    .local v25, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/16 v26, 0x0

    .line 1831
    .local v26, "ret":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 2045
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unrecognized CAT command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1838
    :sswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ril message arrived, slotid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1839
    const/16 v16, 0x0

    .line 1840
    .local v16, "data":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1841
    .local v21, "flag":Z
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1842
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1843
    .local v10, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x30

    if-ne v4, v3, :cond_0

    .line 1844
    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 1845
    const-string/jumbo v3, "query menu fail."

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1846
    return-void

    .line 1848
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-nez v3, :cond_1

    .line 1849
    const-string/jumbo v3, "mMsgDecoder == null, return."

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1850
    return-void

    .line 1852
    :cond_1
    if-eqz v10, :cond_2

    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1854
    :try_start_0
    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1855
    .local v16, "data":Ljava/lang/String;
    const-string/jumbo v3, "ro.mtk_bsp_package"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1857
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->isSetUpMenuCmd(Ljava/lang/String;)Z

    move-result v23

    .line 1858
    .local v23, "isValid":Z
    if-eqz v23, :cond_2

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    if-ne v0, v3, :cond_2

    .line 1859
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ril message arrived : save data to db "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1860
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->sInstKey:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v4, v4, v5

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Lcom/android/internal/telephony/cat/CatService;->saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1862
    const/16 v21, 0x1

    .line 1873
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "data":Ljava/lang/String;
    .end local v23    # "isValid":Z
    :cond_2
    :goto_0
    new-instance v27, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    .line 1874
    .local v27, "rilMsg":Lcom/android/internal/telephony/cat/RilMessage;
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/RilMessage;->setSetUpMenuFromMD(Z)V

    .line 1875
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 1876
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x30

    if-ne v4, v3, :cond_3

    .line 1877
    const-string/jumbo v3, "Ignore response from query menu case"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1878
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/telephony/cat/CatService;->mQueryMenuFlag:Z

    .line 1825
    .end local v21    # "flag":Z
    .end local v27    # "rilMsg":Lcom/android/internal/telephony/cat/RilMessage;
    :cond_3
    :goto_1
    :sswitch_1
    return-void

    .line 1865
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    .restart local v16    # "data":Ljava/lang/String;
    .restart local v21    # "flag":Z
    :cond_4
    :try_start_1
    const-string/jumbo v3, "BSP package always set SET_UP_MENU from MD."

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1866
    const/16 v21, 0x1

    goto :goto_0

    .line 1882
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "data":Ljava/lang/String;
    .end local v21    # "flag":Z
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v4, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_1

    .line 1887
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_1

    .line 1890
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_1

    .line 1893
    :sswitch_5
    const-string/jumbo v3, "MSG_ID_ICC_CHANGED"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1894
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->updateIccAvailability()V

    goto :goto_1

    .line 1897
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 1898
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1899
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    if-eqz v10, :cond_5

    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_5

    .line 1900
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 1901
    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 1900
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto :goto_1

    .line 1903
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Icc REFRESH with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1906
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :cond_6
    const-string/jumbo v3, "IccRefresh Message is null"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1910
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cat/CatService;->handleEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_1

    .line 1913
    :sswitch_8
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cat/CatService;->handleDBHandler(I)V

    goto/16 :goto_1

    .line 1916
    :sswitch_9
    const-string/jumbo v3, "SIM ready. Reporting STK service running now..."

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1917
    const-string/jumbo v3, "ro.mtk_bsp_package"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1918
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setStkEvdlCallByAP(ILandroid/os/Message;)V

    .line 1922
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1920
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setStkEvdlCallByAP(ILandroid/os/Message;)V

    goto :goto_2

    .line 1926
    :sswitch_a
    const-string/jumbo v3, "[IVSR cancel IVSR flag"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1927
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z

    goto/16 :goto_1

    .line 1931
    :sswitch_b
    const-string/jumbo v3, "ro.mtk_bsp_package"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1932
    const-string/jumbo v3, "RIL event download for call."

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1933
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 1934
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1935
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    if-eqz v10, :cond_3

    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 1936
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [I

    .line 1937
    .local v20, "evdlCalldata":[I
    new-instance v2, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;

    .line 1938
    const/4 v3, 0x0

    aget v3, v20, v3

    const/4 v4, 0x1

    aget v4, v20, v4

    .line 1939
    const/4 v5, 0x2

    aget v5, v20, v5

    const/4 v6, 0x3

    aget v6, v20, v6

    .line 1940
    const/4 v7, 0x4

    aget v7, v20, v7

    const/4 v8, 0x5

    aget v8, v20, v8

    .line 1937
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;-><init>(IIIIII)V

    .line 1942
    .local v2, "eventDownloadCallInfo":Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
    iget v3, v2, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    const/16 v4, 0xff

    if-le v4, v3, :cond_9

    .line 1943
    iget v3, v2, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    shr-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    .line 1947
    :goto_3
    const/4 v3, 0x0

    aget v3, v20, v3

    if-nez v3, :cond_a

    .line 1948
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1949
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    if-lez v3, :cond_8

    .line 1950
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    .line 1951
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallConnObjQ:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/telephony/cat/CatService;->removeMessages(ILjava/lang/Object;)V

    .line 1952
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mNumEventDownloadCallConn --.["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1953
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    .line 1964
    :cond_8
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Evdl data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v20, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v20, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v20, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget v4, v20, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    aget v4, v20, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1945
    :cond_9
    const/16 v3, 0xff

    iput v3, v2, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    goto/16 :goto_3

    .line 1956
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1957
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    if-lez v3, :cond_8

    .line 1958
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    .line 1959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mEvdlCallDisConnObjQ:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/telephony/cat/CatService;->removeMessages(ILjava/lang/Object;)V

    .line 1960
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mNumEventDownloadCallDisConn --.["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1961
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    goto/16 :goto_4

    .line 1970
    .end local v2    # "eventDownloadCallInfo":Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "evdlCalldata":[I
    :sswitch_c
    const-string/jumbo v3, "SETUP_MENU_RESET : Setup menu reset."

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1971
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1972
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    if-eqz v10, :cond_b

    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_b

    .line 1973
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    goto/16 :goto_1

    .line 1975
    :cond_b
    const-string/jumbo v3, "SETUP_MENU_RESET : AsyncResult null."

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1979
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_d
    const-string/jumbo v3, "RIL event Call Ctrl."

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1993
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 1994
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1995
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    if-eqz v10, :cond_3

    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 1996
    iget-object v11, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/String;

    .line 1997
    .local v11, "callCtrlInfo":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "callCtrlInfo.length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1998
    const/4 v4, 0x0

    aget-object v4, v11, v4

    .line 1997
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1998
    const-string/jumbo v4, ","

    .line 1997
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1998
    const/4 v4, 0x1

    aget-object v4, v11, v4

    .line 1997
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1998
    const-string/jumbo v4, ","

    .line 1997
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1999
    const/4 v4, 0x2

    aget-object v4, v11, v4

    .line 1997
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    const/16 v24, 0x0

    .line 2002
    .local v24, "rawData":[B
    const/4 v3, 0x1

    :try_start_2
    aget-object v3, v11, v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    aget-object v3, v11, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 2003
    const/4 v3, 0x1

    aget-object v3, v11, v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v24

    .line 2013
    .local v24, "rawData":[B
    const/4 v9, 0x0

    .line 2016
    .local v9, "alphaId":Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, v24

    array-length v3, v0

    const/4 v4, 0x0

    .line 2015
    move-object/from16 v0, v24

    invoke-static {v0, v4, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v9

    .line 2021
    .local v9, "alphaId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CC Alpha msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", sim id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2022
    new-instance v29, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct/range {v29 .. v29}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 2023
    .local v29, "textMessage":Lcom/android/internal/telephony/cat/TextMessage;
    new-instance v13, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v13}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 2024
    .local v13, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CALLCTRL_RSP_MSG:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v3

    iput v3, v13, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 2025
    move-object/from16 v0, v29

    iput-object v9, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 2026
    new-instance v15, Lcom/android/internal/telephony/cat/CallCtrlBySimParams;

    .line 2027
    const/4 v3, 0x0

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v11, v4

    .line 2026
    move-object/from16 v0, v29

    invoke-direct {v15, v13, v0, v3, v4}, Lcom/android/internal/telephony/cat/CallCtrlBySimParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;ILjava/lang/String;)V

    .line 2028
    .local v15, "cmdParams":Lcom/android/internal/telephony/cat/CallCtrlBySimParams;
    new-instance v14, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v14, v15}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 2029
    .local v14, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/cat/CatService;->broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto/16 :goto_1

    .line 2005
    .end local v9    # "alphaId":Ljava/lang/String;
    .end local v13    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    .end local v14    # "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    .end local v15    # "cmdParams":Lcom/android/internal/telephony/cat/CallCtrlBySimParams;
    .end local v29    # "textMessage":Lcom/android/internal/telephony/cat/TextMessage;
    .local v24, "rawData":[B
    :cond_c
    :try_start_4
    const-string/jumbo v3, "Null CC alpha id."

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 2008
    :catch_0
    move-exception v18

    .line 2010
    .local v18, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "CC message drop"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2017
    .end local v18    # "e":Ljava/lang/Exception;
    .local v9, "alphaId":Ljava/lang/String;
    .local v24, "rawData":[B
    :catch_1
    move-exception v19

    .line 2018
    .local v19, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "IndexOutOfBoundsException adnStringFieldToString"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2034
    .end local v9    # "alphaId":Ljava/lang/String;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "callCtrlInfo":[Ljava/lang/String;
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v24    # "rawData":[B
    :sswitch_e
    const-string/jumbo v3, "MSG_ID_LAUNCH_DB_SETUP_MENU"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2035
    const/16 v28, 0x0

    .line 2036
    .local v28, "strCmd":Ljava/lang/String;
    const/16 v22, 0x0

    .line 2038
    .local v22, "inst":Lcom/android/internal/telephony/cat/CatService;
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/telephony/cat/CatService;->sInstKey:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->readCmdFromPreference(Lcom/android/internal/telephony/cat/CatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2040
    .local v28, "strCmd":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_3

    if-eqz v28, :cond_3

    .line 2041
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v3, v3, v4

    move-object/from16 v0, v28

    invoke-static {v3, v0}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCmdFromDB(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1868
    .end local v22    # "inst":Lcom/android/internal/telephony/cat/CatService;
    .end local v28    # "strCmd":Ljava/lang/String;
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    .restart local v21    # "flag":Z
    :catch_2
    move-exception v17

    .local v17, "e":Ljava/lang/ClassCastException;
    goto/16 :goto_1

    .line 1831
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_0
        0x6 -> :sswitch_4
        0x7 -> :sswitch_9
        0x8 -> :sswitch_5
        0x9 -> :sswitch_d
        0xa -> :sswitch_3
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xd -> :sswitch_e
        0xe -> :sswitch_a
        0x14 -> :sswitch_1
        0x15 -> :sswitch_b
        0x18 -> :sswitch_c
        0x1e -> :sswitch_6
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method public isCallDisConnReceived()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2765
    const-string/jumbo v1, "ro.mtk_bsp_package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2766
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mEventDownloadCallDisConnInfo:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 2768
    :cond_1
    return v0
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    monitor-enter p0

    .line 2086
    if-nez p1, :cond_0

    monitor-exit p0

    .line 2087
    return-void

    .line 2090
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2091
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2085
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDBHandler(I)V
    .locals 3
    .param p1, "sim_id"    # I

    .prologue
    monitor-enter p0

    .line 2106
    const/16 v1, 0xc

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2107
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2103
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    monitor-enter p0

    .line 2095
    if-nez p1, :cond_0

    monitor-exit p0

    .line 2096
    return-void

    .line 2099
    :cond_0
    const/16 v1, 0xb

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2100
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2094
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onLaunchCachedSetupMenu()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 2112
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2113
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2110
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public queryStkSetUpMenuFromMD()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2776
    const-string/jumbo v1, "query stk menu from modem"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2777
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2779
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2780
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mNLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_1

    .line 2781
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mNLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryStkSetUpMenuFromMD(Ljava/lang/String;Landroid/os/Message;)V

    .line 2775
    :cond_0
    :goto_0
    return-void

    .line 2783
    :cond_1
    const-string/jumbo v1, "mNLteCmdIf is null."

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAllCallDisConn(Z)V
    .locals 2
    .param p1, "isDisConn"    # Z

    .prologue
    .line 2760
    const-string/jumbo v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2761
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatService;->mIsAllCallDisConn:Z

    .line 2759
    :cond_0
    return-void
.end method

.method startTimeOut(IJ)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "delay"    # J

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startTimeOut, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", msg id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut(I)V

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 310
    return-void
.end method

.method public update(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 6
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 2478
    const/4 v0, 0x0

    .line 2479
    .local v0, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v1, 0x0

    .line 2481
    .local v1, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p3, :cond_0

    .line 2485
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2486
    .local v0, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 2487
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 2491
    .end local v0    # "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2492
    if-eqz v1, :cond_3

    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v2, v1, :cond_3

    .line 2493
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_1

    .line 2494
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2497
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_2

    .line 2498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterForReady slotid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "instance : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2499
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 2502
    :cond_2
    const-string/jumbo v2, "Reinitialize the Service with SIMRecords and UiccCardApplication"

    .line 2501
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2503
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2504
    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2507
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-virtual {v2, p0, v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerForRecordsLoaded slotid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " instance:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v3

    .line 2477
    return-void

    .line 2491
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method updateIccAvailability()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2514
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v3, :cond_0

    .line 2515
    const-string/jumbo v3, "updateIccAvailability, mUiccController is null"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2516
    return-void

    .line 2519
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 2520
    .local v1, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 2521
    .local v0, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_1

    .line 2522
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    .line 2524
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 2525
    .local v2, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 2526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Slot id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " New Card State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Old Card State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2527
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v3, :cond_3

    .line 2528
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, v3, :cond_3

    .line 2529
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    .line 2513
    :cond_2
    :goto_0
    return-void

    .line 2530
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_2

    .line 2531
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v3, :cond_2

    .line 2533
    const-string/jumbo v3, "SIM present. Reporting STK service running now..."

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2534
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    goto :goto_0
.end method
