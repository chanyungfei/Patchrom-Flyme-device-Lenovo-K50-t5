.class public Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;
.super Ljava/lang/Object;
.source "UtkCmdMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;,
        Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;,
        Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$1;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues:[I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBrowserSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

.field private mCallSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

.field mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

.field private mInput:Lcom/android/internal/telephony/cdma/utk/Input;

.field private mMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

.field private mOpenChannelSettings:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

.field private mSmsPdu:[B

.field private mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

.field private mToneSettings:Lcom/android/internal/telephony/cdma/utk/ToneSettings;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->-com_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->-com_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues:[I

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

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_15

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_14

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_13

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_12

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->LOCAL_INFO:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_11

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->MORE_TIME:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_10

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_f

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_e

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->POLL_INTERVAL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_d

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_c

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_b

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_a

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_9

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_8

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_7

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_6

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_5

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_4

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_3

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_2

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

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
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->-com_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues:[I

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
    .line 191
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$1;-><init>()V

    .line 190
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

    .line 34
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cdma/utk/ToneSettings;

    .line 35
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

    .line 36
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mSmsPdu:[B

    .line 141
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    .line 142
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 143
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/Menu;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    .line 144
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/Input;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mInput:Lcom/android/internal/telephony/cdma/utk/Input;

    .line 145
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->-getcom_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getCmdType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 147
    :sswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;->values()[Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

    goto :goto_0

    .line 152
    :sswitch_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/ToneSettings;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cdma/utk/ToneSettings;

    goto :goto_0

    .line 155
    :sswitch_2
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

    .line 156
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;->setupMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    goto :goto_0

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x7 -> :sswitch_1
        0xf -> :sswitch_2
    .end sparse-switch
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V
    .locals 3
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

    .line 34
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cdma/utk/ToneSettings;

    .line 35
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

    .line 36
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mSmsPdu:[B

    .line 65
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    .line 66
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->-getcom_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getCmdType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 64
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :goto_0
    return-void

    .line 69
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_0
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;->menu:Lcom/android/internal/telephony/cdma/utk/Menu;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    goto :goto_0

    .line 76
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_1
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    goto :goto_0

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_2
    move-object v1, p1

    .line 79
    check-cast v1, Lcom/android/internal/telephony/cdma/utk/SendSmsParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/SendSmsParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 80
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/SendSmsParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/SendSmsParams;->smsPdu:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mSmsPdu:[B

    goto :goto_0

    .line 84
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_3
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/GetInputParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/GetInputParams;->input:Lcom/android/internal/telephony/cdma/utk/Input;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mInput:Lcom/android/internal/telephony/cdma/utk/Input;

    goto :goto_0

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_4
    move-object v1, p1

    .line 87
    check-cast v1, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 88
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

    .line 89
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserParams;->url:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

    check-cast p1, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserParams;->mode:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

    goto :goto_0

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_5
    move-object v0, p1

    .line 93
    check-cast v0, Lcom/android/internal/telephony/cdma/utk/PlayToneParams;

    .line 94
    .local v0, "params":Lcom/android/internal/telephony/cdma/utk/PlayToneParams;
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/utk/PlayToneParams;->settings:Lcom/android/internal/telephony/cdma/utk/ToneSettings;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cdma/utk/ToneSettings;

    .line 95
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/utk/PlayToneParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    goto :goto_0

    .line 98
    .end local v0    # "params":Lcom/android/internal/telephony/cdma/utk/PlayToneParams;
    :pswitch_6
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

    .line 99
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object v1, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 100
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;->callMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object v1, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 101
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

    check-cast p1, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;->setupMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;->setupMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    goto :goto_0

    .line 105
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_7
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mOpenChannelSettings:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-object v1, p1

    .line 107
    check-cast v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 109
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mOpenChannelSettings:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iput-object v1, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .line 110
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mOpenChannelSettings:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;

    iget v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bufferSize:I

    iput v1, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bufferSize:I

    .line 111
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mOpenChannelSettings:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    iput-object v1, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    .line 112
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mOpenChannelSettings:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-object v1, p1

    .line 113
    check-cast v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->networkAccessName:Ljava/lang/String;

    .line 112
    iput-object v1, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->networkAccessName:Ljava/lang/String;

    .line 114
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mOpenChannelSettings:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->userName:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->userName:Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mOpenChannelSettings:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->userPwd:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->userPwd:Ljava/lang/String;

    .line 116
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mOpenChannelSettings:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iput-object v1, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    .line 117
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mOpenChannelSettings:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->destAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    iput-object v1, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->destAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    .line 118
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mOpenChannelSettings:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->immediateLink:Z

    iput-boolean v1, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    .line 119
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mOpenChannelSettings:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->autoReconnect:Z

    iput-boolean v1, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->autoReconnect:Z

    .line 120
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mOpenChannelSettings:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    check-cast p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->backgrountMode:Z

    iput-boolean v2, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    goto/16 :goto_0

    .line 123
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_8
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    goto/16 :goto_0

    .line 126
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_9
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    goto/16 :goto_0

    .line 129
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_a
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/SendDataParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    goto/16 :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public geInput()Lcom/android/internal/telephony/cdma/utk/Input;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mInput:Lcom/android/internal/telephony/cdma/utk/Input;

    return-object v0
.end method

.method public geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    return-object v0
.end method

.method public getBrowserSettings()Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

    return-object v0
.end method

.method public getCallSettings()Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

    return-object v0
.end method

.method public getCmdType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Lcom/android/internal/telephony/cdma/utk/Menu;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    return-object v0
.end method

.method public getOpenChannelSettings()Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mOpenChannelSettings:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    return-object v0
.end method

.method public getToneSettings()Lcom/android/internal/telephony/cdma/utk/ToneSettings;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cdma/utk/ToneSettings;

    return-object v0
.end method

.method public setTextMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mInput:Lcom/android/internal/telephony/cdma/utk/Input;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 174
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->-getcom_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getCmdType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 176
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 180
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cdma/utk/ToneSettings;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 183
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;->setupMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 174
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x7 -> :sswitch_1
        0xf -> :sswitch_2
    .end sparse-switch
.end method
