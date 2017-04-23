.class public Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;
.super Ljava/lang/Object;
.source "RadioCapabilitySwitchUtil.java"


# static fields
.field public static final CN_MCC:Ljava/lang/String; = "460"

.field public static final DO_SWITCH:I = 0x0

.field public static final ICCID_ERROR:I = 0x3

.field public static final IMSI_NOT_READY:Ljava/lang/String; = "0"

.field public static final IMSI_NOT_READY_OR_SIM_LOCKED:I = 0x2

.field public static final IMSI_READY:Ljava/lang/String; = "1"

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final MAIN_SIM_PROP:Ljava/lang/String; = "persist.radio.simswitch.iccid"

.field public static final NOT_SHOW_DIALOG:I = 0x1

.field public static final NOT_SWITCH:I = 0x1

.field public static final NOT_SWITCH_SIM_INFO_NOT_READY:I = 0x2

.field private static final NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field public static final OP01_6M_PRIORITY_OP01_SIM:I = 0x1

.field public static final OP01_6M_PRIORITY_OP01_USIM:I = 0x0

.field public static final OP01_6M_PRIORITY_OTHER:I = 0x2

.field private static final PLMN_TABLE_OP01:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP02:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP09:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP18:[Ljava/lang/String;

.field private static final PROPERTY_ICCID:Ljava/lang/String; = "ril.iccid.sim"

.field private static final PROPERTY_SIM_ICCID:[Ljava/lang/String;

.field private static final PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

.field public static final SHOW_DIALOG:I = 0x0

.field public static final SIM_OP_INFO_OP01:I = 0x2

.field public static final SIM_OP_INFO_OP02:I = 0x3

.field public static final SIM_OP_INFO_OP09:I = 0x4

.field public static final SIM_OP_INFO_OP18:I = 0x5

.field public static final SIM_OP_INFO_OVERSEA:I = 0x1

.field public static final SIM_OP_INFO_UNKNOWN:I = 0x0

.field public static final SIM_SWITCH_MODE_DUAL_TALK:I = 0x3

.field public static final SIM_SWITCH_MODE_DUAL_TALK_SWAP:I = 0x4

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS:I = 0x1

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS_LITE:I = 0x2

.field public static final SIM_TYPE_OTHER:I = 0x2

.field public static final SIM_TYPE_SIM:I = 0x0

.field public static final SIM_TYPE_USIM:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    .line 88
    const-string/jumbo v1, "46000"

    aput-object v1, v0, v3

    const-string/jumbo v1, "46002"

    aput-object v1, v0, v4

    const-string/jumbo v1, "46007"

    aput-object v1, v0, v5

    const-string/jumbo v1, "46008"

    aput-object v1, v0, v6

    const-string/jumbo v1, "45412"

    aput-object v1, v0, v7

    const-string/jumbo v1, "45413"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "00101"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "00211"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "00321"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "00431"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "00541"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "00651"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "00761"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "00871"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "00902"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "01012"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "01122"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "01232"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "46004"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "46602"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "50270"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 87
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP01:[Ljava/lang/String;

    .line 95
    new-array v0, v7, [Ljava/lang/String;

    .line 96
    const-string/jumbo v1, "46001"

    aput-object v1, v0, v3

    const-string/jumbo v1, "46006"

    aput-object v1, v0, v4

    const-string/jumbo v1, "46009"

    aput-object v1, v0, v5

    const-string/jumbo v1, "45407"

    aput-object v1, v0, v6

    .line 95
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP02:[Ljava/lang/String;

    .line 99
    new-array v0, v7, [Ljava/lang/String;

    .line 100
    const-string/jumbo v1, "46005"

    aput-object v1, v0, v3

    const-string/jumbo v1, "45502"

    aput-object v1, v0, v4

    const-string/jumbo v1, "46003"

    aput-object v1, v0, v5

    const-string/jumbo v1, "46011"

    aput-object v1, v0, v6

    .line 99
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09:[Ljava/lang/String;

    .line 104
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    .line 105
    const-string/jumbo v1, "405840"

    aput-object v1, v0, v3

    const-string/jumbo v1, "405854"

    aput-object v1, v0, v4

    const-string/jumbo v1, "405855"

    aput-object v1, v0, v5

    const-string/jumbo v1, "405856"

    aput-object v1, v0, v6

    .line 106
    const-string/jumbo v1, "405857"

    aput-object v1, v0, v7

    const-string/jumbo v1, "405858"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "405855"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "405856"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 107
    const-string/jumbo v1, "405857"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "405858"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "405859"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "405860"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 108
    const-string/jumbo v1, "405861"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "405862"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "405863"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "405864"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 109
    const-string/jumbo v1, "405865"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "405866"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "405867"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "405868"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 110
    const-string/jumbo v1, "405869"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "405870"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "405871"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "405872"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 111
    const-string/jumbo v1, "405873"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "405874"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 104
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP18:[Ljava/lang/String;

    .line 117
    new-array v0, v7, [Ljava/lang/String;

    .line 118
    const-string/jumbo v1, "ril.iccid.sim1"

    aput-object v1, v0, v3

    .line 119
    const-string/jumbo v1, "ril.iccid.sim2"

    aput-object v1, v0, v4

    .line 120
    const-string/jumbo v1, "ril.iccid.sim3"

    aput-object v1, v0, v5

    .line 121
    const-string/jumbo v1, "ril.iccid.sim4"

    aput-object v1, v0, v6

    .line 117
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    .line 133
    new-array v0, v7, [Ljava/lang/String;

    .line 134
    const-string/jumbo v1, "ril.imsi.status.sim1"

    aput-object v1, v0, v3

    .line 135
    const-string/jumbo v1, "ril.imsi.status.sim2"

    aput-object v1, v0, v4

    .line 136
    const-string/jumbo v1, "ril.imsi.status.sim3"

    aput-object v1, v0, v5

    .line 137
    const-string/jumbo v1, "ril.imsi.status.sim4"

    aput-object v1, v0, v6

    .line 133
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOp01(I[I[I)Z
    .locals 10
    .param p0, "targetPhoneId"    # I
    .param p1, "simOpInfo"    # [I
    .param p2, "simType"    # [I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 440
    const-string/jumbo v5, "persist.radio.simswitch"

    const-string/jumbo v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 439
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 442
    .local v0, "curPhoneId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkOp01 : curPhoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 443
    aget v5, p1, p0

    if-ne v5, v9, :cond_2

    .line 444
    aget v5, p2, p0

    if-nez v5, :cond_1

    .line 445
    aget v5, p1, v0

    if-ne v5, v9, :cond_0

    .line 446
    aget v5, p2, v0

    if-eqz v5, :cond_0

    .line 447
    const-string/jumbo v5, "checkOp01 : case 1,2; stay in current phone"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 448
    return v8

    .line 452
    :cond_0
    const-string/jumbo v5, "checkOp01 : case 3,4"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 453
    return v7

    .line 458
    :cond_1
    const-string/jumbo v5, "checkOp01 : case 1,2"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 459
    return v7

    .line 461
    :cond_2
    aget v5, p1, p0

    if-ne v5, v7, :cond_6

    .line 462
    aget v5, p1, v0

    if-ne v5, v9, :cond_3

    .line 463
    const-string/jumbo v5, "checkOp01 : case 1,2,3,4; stay in current phone"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 464
    return v8

    .line 465
    :cond_3
    aget v5, p2, p0

    if-nez v5, :cond_5

    .line 466
    aget v5, p1, v0

    if-ne v5, v7, :cond_4

    .line 467
    aget v5, p2, v0

    if-eqz v5, :cond_4

    .line 468
    const-string/jumbo v5, "checkOp01 : case 5,6; stay in current phone"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 469
    return v8

    .line 473
    :cond_4
    const-string/jumbo v5, "checkOp01 : case 7,8"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 474
    return v7

    .line 479
    :cond_5
    const-string/jumbo v5, "checkOp01 : case 5,6"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 480
    return v7

    .line 483
    :cond_6
    aget v5, p1, p0

    if-nez v5, :cond_9

    .line 484
    const-string/jumbo v5, "checkOp01 : case 10, target IMSI not ready"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 485
    const/4 v3, 0x0

    .line 486
    .local v3, "insertedStatus":I
    array-length v4, p1

    .line 487
    .local v4, "phoneNum":I
    new-array v1, v4, [Ljava/lang/String;

    .line 488
    .local v1, "currIccId":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_8

    .line 489
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ril.iccid.sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 490
    const-string/jumbo v5, "N/A"

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 491
    shl-int v5, v7, v2

    or-int/2addr v3, v5

    .line 488
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    :cond_8
    if-gt v3, v9, :cond_9

    .line 495
    const-string/jumbo v5, "checkOp01 : case 10, single SIM case, switch!"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 496
    return v7

    .line 499
    .end local v1    # "currIccId":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "insertedStatus":I
    .end local v4    # "phoneNum":I
    :cond_9
    const-string/jumbo v5, "ro.mtk_world_phone_policy"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 500
    aget v5, p1, v0

    if-eq v5, v9, :cond_a

    .line 501
    aget v5, p1, v0

    if-eq v5, v7, :cond_a

    .line 502
    const-string/jumbo v5, "checkOp01 : case 11, op01-B, switch it!"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 503
    return v7

    .line 507
    :cond_a
    const-string/jumbo v5, "checkOp01 : case 9"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 508
    return v8
.end method

.method private static checkOp01LC(I[I[I)Z
    .locals 12
    .param p0, "targetPhoneId"    # I
    .param p1, "simOpInfo"    # [I
    .param p2, "simType"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 514
    const-string/jumbo v7, "persist.radio.simswitch"

    const-string/jumbo v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 513
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .line 515
    .local v0, "curPhoneId":I
    const/4 v3, 0x0

    .line 516
    .local v3, "insertedSimCount":I
    const/4 v4, 0x0

    .line 517
    .local v4, "insertedStatus":I
    array-length v5, p1

    .line 518
    .local v5, "phoneNum":I
    new-array v1, v5, [Ljava/lang/String;

    .line 519
    .local v1, "currIccId":[Ljava/lang/String;
    new-array v6, v5, [I

    .line 520
    .local v6, "priority":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_4

    .line 521
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ril.iccid.sim"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 522
    const-string/jumbo v7, "N/A"

    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 523
    add-int/lit8 v3, v3, 0x1

    .line 524
    shl-int v7, v9, v2

    or-int/2addr v4, v7

    .line 526
    :cond_0
    aget v7, p1, v2

    if-ne v7, v11, :cond_3

    .line 527
    aget v7, p2, v2

    if-ne v7, v9, :cond_2

    .line 528
    aput v10, v6, v2

    .line 520
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 529
    :cond_2
    aget v7, p2, v2

    if-nez v7, :cond_1

    .line 530
    aput v9, v6, v2

    goto :goto_1

    .line 533
    :cond_3
    aput v11, v6, v2

    goto :goto_1

    .line 537
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkOp01LC(curPhoneId): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 538
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkOp01LC(insertedSimCount): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 539
    if-ne v3, v9, :cond_5

    .line 540
    const-string/jumbo v7, "checkOp01LC : single SIM case, switch!"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 541
    return v9

    .line 543
    :cond_5
    aget v7, v6, p0

    aget v8, v6, v0

    if-gt v7, v8, :cond_6

    .line 544
    const-string/jumbo v7, "checkOp01LC : target priority greater than or equal to current, switch!"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 545
    return v9

    .line 547
    :cond_6
    const-string/jumbo v7, "checkOp01LC : target priority lower than current; stay in current phone"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 548
    return v10
.end method

.method private static checkOp18(I[I[I)Z
    .locals 5
    .param p0, "targetPhoneId"    # I
    .param p1, "simOpInfo"    # [I
    .param p2, "simType"    # [I

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 553
    const-string/jumbo v1, "persist.radio.simswitch"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 555
    .local v0, "curPhoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkOp18 : curPhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 556
    aget v1, p1, p0

    if-ne v1, v4, :cond_0

    .line 558
    const-string/jumbo v1, "checkOp18 : case 1"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 559
    return v3

    .line 561
    :cond_0
    aget v1, p1, v0

    if-ne v1, v4, :cond_1

    .line 562
    const-string/jumbo v1, "checkOp18 : case 2; stay in current phone"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 563
    const/4 v1, 0x0

    return v1

    .line 565
    :cond_1
    const-string/jumbo v1, "checkOp18 : case 3; all are not op18"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 566
    return v3
.end method

.method public static clearAllRilMccMnc(I)V
    .locals 2
    .param p0, "phoneNum"    # I

    .prologue
    .line 816
    const-string/jumbo v1, "clearAllRilMccMnc"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 817
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 818
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->clearRilMccMnc(I)V

    .line 817
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :cond_0
    return-void
.end method

.method public static clearAllSimImsiStatus()V
    .locals 2

    .prologue
    .line 809
    const-string/jumbo v1, "clearAllSimImsiStatus"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 810
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 811
    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    .line 810
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 808
    :cond_0
    return-void
.end method

.method public static clearRilMccMnc(I)V
    .locals 3
    .param p0, "slot"    # I

    .prologue
    .line 799
    if-nez p0, :cond_0

    .line 800
    const-string/jumbo v0, "gsm.sim.ril.mcc.mnc"

    .line 804
    .local v0, "propStr":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clear property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 797
    return-void

    .line 802
    .end local v0    # "propStr":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "propStr":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I
    .locals 5
    .param p0, "curId"    # I
    .param p1, "op01Usim"    # [Z
    .param p2, "op01Sim"    # [Z
    .param p3, "overseaUsim"    # [Z
    .param p4, "overseaSim"    # [Z

    .prologue
    const/4 v4, -0x1

    .line 365
    const/4 v2, -0x1

    .line 366
    .local v2, "targetSim":I
    array-length v1, p1

    .line 368
    .local v1, "phoneNum":I
    aget-boolean v3, p1, p0

    if-eqz v3, :cond_0

    .line 369
    return p0

    .line 371
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 372
    aget-boolean v3, p1, v0

    if-eqz v3, :cond_1

    .line 373
    move v2, v0

    .line 371
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_2
    if-ne v2, v4, :cond_3

    aget-boolean v3, p2, p0

    if-eqz v3, :cond_4

    .line 377
    :cond_3
    return v2

    .line 379
    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_6

    .line 380
    aget-boolean v3, p2, v0

    if-eqz v3, :cond_5

    .line 381
    move v2, v0

    .line 379
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 384
    :cond_6
    if-ne v2, v4, :cond_7

    aget-boolean v3, p3, p0

    if-eqz v3, :cond_8

    .line 385
    :cond_7
    return v2

    .line 387
    :cond_8
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_a

    .line 388
    aget-boolean v3, p3, v0

    if-eqz v3, :cond_9

    .line 389
    move v2, v0

    .line 387
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 392
    :cond_a
    if-ne v2, v4, :cond_b

    aget-boolean v3, p4, p0

    if-eqz v3, :cond_c

    .line 393
    :cond_b
    return v2

    .line 395
    :cond_c
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_e

    .line 396
    aget-boolean v3, p4, v0

    if-eqz v3, :cond_d

    .line 397
    move v2, v0

    .line 395
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 400
    :cond_e
    return v2
.end method

.method public static getHighestPriorityPhone(I[I)I
    .locals 9
    .param p0, "capPhoneId"    # I
    .param p1, "priority"    # [I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 411
    const/4 v4, 0x0

    .line 412
    .local v4, "targetPhone":I
    array-length v3, p1

    .line 413
    .local v3, "phoneNum":I
    const/4 v1, 0x0

    .line 414
    .local v1, "highestPriorityCount":I
    const/4 v0, 0x0

    .line 416
    .local v0, "highestPriorityBitMap":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 417
    aget v5, p1, v2

    aget v6, p1, v4

    if-ge v5, v6, :cond_1

    .line 418
    move v4, v2

    .line 419
    const/4 v1, 0x1

    .line 420
    shl-int v0, v7, v2

    .line 416
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    :cond_1
    aget v5, p1, v2

    aget v6, p1, v4

    if-ne v5, v6, :cond_0

    .line 422
    add-int/lit8 v1, v1, 0x1

    .line 423
    shl-int v5, v7, v2

    or-int/2addr v0, v5

    goto :goto_1

    .line 426
    :cond_2
    if-ne v1, v7, :cond_3

    .line 427
    return v4

    .line 428
    :cond_3
    if-ne p0, v8, :cond_4

    .line 431
    return v8

    .line 432
    :cond_4
    shl-int v5, v7, p0

    and-int/2addr v5, v0

    if-eqz v5, :cond_5

    .line 433
    return p0

    .line 435
    :cond_5
    return v8
.end method

.method public static getMainCapabilityPhoneId()I
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, "phoneId":I
    const-string/jumbo v2, "ro.mtk_dt_support"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 579
    const-string/jumbo v2, "persist.ril.simswitch.swapmode"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 580
    .local v1, "swapMode":I
    if-ne v1, v5, :cond_3

    .line 581
    const/4 v0, 0x0

    .line 588
    .end local v1    # "swapMode":I
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 589
    if-nez v0, :cond_1

    .line 590
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    .line 591
    const-string/jumbo v3, "CDMA"

    .line 590
    if-ne v2, v3, :cond_1

    .line 593
    const/16 v0, 0xa

    .line 596
    :cond_1
    if-ne v0, v4, :cond_2

    .line 597
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    .line 598
    const-string/jumbo v3, "CDMA"

    .line 597
    if-ne v2, v3, :cond_2

    .line 600
    const/16 v0, 0xb

    .line 604
    :cond_2
    const-string/jumbo v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[RadioCapSwitchUtil] getMainCapabilityPhoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return v0

    .line 582
    .restart local v1    # "swapMode":I
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 583
    const/4 v0, 0x1

    goto :goto_0

    .line 586
    .end local v1    # "swapMode":I
    :cond_4
    const-string/jumbo v2, "persist.radio.simswitch"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method private static getSimImsiStatus(I)Ljava/lang/String;
    .locals 2
    .param p0, "slot"    # I

    .prologue
    .line 793
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    aget-object v0, v1, p0

    .line 794
    .local v0, "propStr":Ljava/lang/String;
    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSimInfo([I[II)Z
    .locals 9
    .param p0, "simOpInfo"    # [I
    .param p1, "simType"    # [I
    .param p2, "insertedStatus"    # I

    .prologue
    .line 180
    array-length v5, p0

    new-array v3, v5, [Ljava/lang/String;

    .line 181
    .local v3, "strMnc":[Ljava/lang/String;
    array-length v5, p0

    new-array v4, v5, [Ljava/lang/String;

    .line 184
    .local v4, "strSimType":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_16

    .line 185
    if-nez v0, :cond_3

    .line 186
    const-string/jumbo v2, "gsm.ril.uicctype"

    .line 190
    .local v2, "propStr":Ljava/lang/String;
    :goto_1
    const-string/jumbo v5, ""

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 191
    aget-object v5, v4, v0

    const-string/jumbo v6, "SIM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 192
    const/4 v5, 0x0

    aput v5, p1, v0

    .line 198
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SimType["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", simType["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 200
    if-nez v0, :cond_6

    .line 201
    const-string/jumbo v2, "gsm.sim.ril.mcc.mnc"

    .line 205
    :goto_3
    const-string/jumbo v5, ""

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 206
    aget-object v5, v3, v0

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 207
    aget-object v5, v3, v0

    const-string/jumbo v6, "N/A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 206
    if-nez v5, :cond_0

    .line 208
    aget-object v5, v3, v0

    const-string/jumbo v6, "error"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 206
    if-nez v5, :cond_0

    .line 209
    aget-object v5, v3, v0

    const-string/jumbo v6, "sim_absent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 206
    if-eqz v5, :cond_8

    .line 210
    :cond_0
    const-string/jumbo v5, "1"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimImsiStatus(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 212
    const-string/jumbo v5, "gsm.sim.operator.imsi"

    const-string/jumbo v6, ""

    .line 211
    invoke-static {v0, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 213
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-lt v5, v6, :cond_7

    .line 214
    aget-object v5, v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 218
    :cond_1
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "strMnc["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] from gsm.sim.operator.imsi:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 223
    :cond_2
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "insertedStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 224
    if-ltz p2, :cond_c

    const/4 v5, 0x1

    shl-int/2addr v5, v0

    and-int/2addr v5, p2

    if-lez v5, :cond_c

    .line 225
    aget-object v5, v3, v0

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 226
    const-string/jumbo v5, "SIM is inserted but no imsi"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 227
    const/4 v5, 0x0

    return v5

    .line 188
    .end local v2    # "propStr":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "gsm.ril.uicctype."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "propStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 193
    :cond_4
    aget-object v5, v4, v0

    const-string/jumbo v6, "USIM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 194
    const/4 v5, 0x1

    aput v5, p1, v0

    goto/16 :goto_2

    .line 196
    :cond_5
    const/4 v5, 0x2

    aput v5, p1, v0

    goto/16 :goto_2

    .line 203
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 215
    :cond_7
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_1

    .line 216
    aget-object v5, v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    goto/16 :goto_4

    .line 221
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "strMnc["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] from ril.mcc.mnc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 229
    :cond_9
    aget-object v5, v3, v0

    const-string/jumbo v6, "sim_lock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 230
    const-string/jumbo v5, "SIM is lock, wait pin unlock"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 231
    const/4 v5, 0x0

    return v5

    .line 233
    :cond_a
    aget-object v5, v3, v0

    const-string/jumbo v6, "N/A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 234
    aget-object v5, v3, v0

    const-string/jumbo v6, "error"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 233
    if-nez v5, :cond_b

    .line 235
    aget-object v5, v3, v0

    const-string/jumbo v6, "sim_absent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 233
    if-eqz v5, :cond_c

    .line 236
    :cond_b
    const-string/jumbo v5, "strMnc have invalid value, return false"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 237
    const/4 v5, 0x0

    return v5

    .line 240
    :cond_c
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP01:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_6
    if-ge v5, v7, :cond_d

    aget-object v1, v6, v5

    .line 241
    .local v1, "mccmnc":Ljava/lang/String;
    aget-object v8, v3, v0

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 242
    const/4 v5, 0x2

    aput v5, p0, v0

    .line 246
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_d
    aget v5, p0, v0

    if-nez v5, :cond_e

    .line 247
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP02:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_7
    if-ge v5, v7, :cond_e

    aget-object v1, v6, v5

    .line 248
    .restart local v1    # "mccmnc":Ljava/lang/String;
    aget-object v8, v3, v0

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 249
    const/4 v5, 0x3

    aput v5, p0, v0

    .line 254
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_e
    aget v5, p0, v0

    if-nez v5, :cond_f

    .line 255
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_8
    if-ge v5, v7, :cond_f

    aget-object v1, v6, v5

    .line 256
    .restart local v1    # "mccmnc":Ljava/lang/String;
    aget-object v8, v3, v0

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 257
    const/4 v5, 0x4

    aput v5, p0, v0

    .line 262
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_f
    const-string/jumbo v5, "ro.operator.optr"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "OP18"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 263
    aget v5, p0, v0

    if-nez v5, :cond_10

    .line 264
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP18:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_9
    if-ge v5, v7, :cond_10

    aget-object v1, v6, v5

    .line 265
    .restart local v1    # "mccmnc":Ljava/lang/String;
    aget-object v8, v3, v0

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 266
    const/4 v5, 0x5

    aput v5, p0, v0

    .line 272
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_10
    aget v5, p0, v0

    if-nez v5, :cond_11

    .line 273
    aget-object v5, v3, v0

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 274
    const/4 v5, 0x1

    aput v5, p0, v0

    .line 277
    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "strMnc["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", simOpInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p0, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 240
    .restart local v1    # "mccmnc":Ljava/lang/String;
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    .line 247
    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    .line 255
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 264
    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 279
    .end local v1    # "mccmnc":Ljava/lang/String;
    .end local v2    # "propStr":Ljava/lang/String;
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSimInfo(simOpInfo): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSimInfo(simType): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 281
    const/4 v5, 0x1

    return v5
.end method

.method public static isAnySimLocked(I)Z
    .locals 9
    .param p0, "phoneNum"    # I

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 726
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 727
    const-string/jumbo v4, "isAnySimLocked always returns false in C2K"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 728
    return v6

    .line 732
    :cond_0
    new-array v2, p0, [Ljava/lang/String;

    .line 733
    .local v2, "mnc":[Ljava/lang/String;
    new-array v1, p0, [Ljava/lang/String;

    .line 735
    .local v1, "iccid":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_a

    .line 736
    sget-object v4, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 738
    aget-object v4, v1, v0

    const-string/jumbo v5, "N/A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 739
    const-string/jumbo v4, "gsm.sim.operator.imsi"

    const-string/jumbo v5, ""

    invoke-static {v0, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 740
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v8, :cond_4

    .line 741
    aget-object v4, v2, v0

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 745
    :cond_1
    :goto_1
    aget-object v4, v2, v0

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 746
    if-nez v0, :cond_5

    .line 747
    const-string/jumbo v3, "gsm.sim.ril.mcc.mnc"

    .line 751
    .local v3, "propStr":Ljava/lang/String;
    :goto_2
    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 752
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mnc["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] from ril.mcc.mnc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 759
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_2
    :goto_3
    aget-object v4, v1, v0

    const-string/jumbo v5, "N/A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    aget-object v4, v2, v0

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 760
    aget-object v4, v2, v0

    const-string/jumbo v5, "sim_lock"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 759
    if-eqz v4, :cond_7

    .line 761
    :cond_3
    const/4 v4, 0x1

    return v4

    .line 742
    :cond_4
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_1

    .line 743
    aget-object v4, v2, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    goto :goto_1

    .line 749
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propStr":Ljava/lang/String;
    goto/16 :goto_2

    .line 754
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from gsm.sim.operator.imsi:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 755
    aget-object v5, v1, v0

    .line 754
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 764
    :cond_7
    const-string/jumbo v4, "1"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimImsiStatus(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 765
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "clear mcc.mnc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 766
    if-nez v0, :cond_9

    .line 767
    const-string/jumbo v3, "gsm.sim.ril.mcc.mnc"

    .line 771
    .restart local v3    # "propStr":Ljava/lang/String;
    :goto_4
    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 769
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propStr":Ljava/lang/String;
    goto :goto_4

    .line 775
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_a
    return v6
.end method

.method public static isC2kSupport()Z
    .locals 2

    .prologue
    .line 779
    const-string/jumbo v0, "ro.mtk_c2k_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    const-string/jumbo v0, "return true for C2K project"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 781
    const/4 v0, 0x1

    return v0

    .line 783
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isNeedShowSimDialog()I
    .locals 14

    .prologue
    .line 634
    const-string/jumbo v12, "ro.mtk_disable_cap_switch"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 635
    const-string/jumbo v12, "mtk_disable_cap_switch is true"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 636
    const/4 v12, 0x0

    return v12

    .line 639
    :cond_0
    const-string/jumbo v12, "isNeedShowSimDialog start"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 640
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    .line 641
    .local v7, "phoneCount":I
    new-array v9, v7, [I

    .line 642
    .local v9, "simOpInfo":[I
    new-array v10, v7, [I

    .line 643
    .local v10, "simType":[I
    new-array v0, v7, [Ljava/lang/String;

    .line 644
    .local v0, "currIccId":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 645
    .local v2, "insertedSimCount":I
    const/4 v3, 0x0

    .line 646
    .local v3, "insertedStatus":I
    const/4 v4, 0x0

    .line 647
    .local v4, "op02CardCount":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v11, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v8, "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 650
    .local v5, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v6, "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_4

    .line 653
    sget-object v12, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v12, v12, v1

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v1

    .line 654
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "currIccid["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 655
    aget-object v12, v0, v1

    if-eqz v12, :cond_1

    const-string/jumbo v12, ""

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 656
    :cond_1
    const-string/jumbo v12, "GSM"

    const-string/jumbo v13, "iccid not found, wait for next sim state change"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v12, 0x3

    return v12

    .line 659
    :cond_2
    const-string/jumbo v12, "N/A"

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 660
    add-int/lit8 v2, v2, 0x1

    .line 661
    const/4 v12, 0x1

    shl-int/2addr v12, v1

    or-int/2addr v3, v12

    .line 652
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 665
    :cond_4
    const/4 v12, 0x2

    if-ge v2, v12, :cond_5

    .line 666
    const-string/jumbo v12, "isNeedShowSimDialog: insert sim count < 2, do not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 667
    const/4 v12, 0x1

    return v12

    .line 670
    :cond_5
    invoke-static {v9, v10, v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v12

    if-nez v12, :cond_6

    .line 671
    const-string/jumbo v12, "GSM"

    const-string/jumbo v13, "isNeedShowSimDialog: Can\'t get SIM information"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v12, 0x2

    return v12

    .line 674
    :cond_6
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_a

    .line 676
    aget v12, v10, v1

    const/4 v13, 0x1

    if-ne v13, v12, :cond_8

    .line 677
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_7
    :goto_2
    aget v12, v9, v1

    const/4 v13, 0x3

    if-ne v13, v12, :cond_9

    .line 684
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 678
    :cond_8
    aget v12, v10, v1

    if-nez v12, :cond_7

    .line 679
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 686
    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 689
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "usimIndexList size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 690
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "op02IndexList size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_d

    .line 694
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_c

    .line 695
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 696
    add-int/lit8 v4, v4, 0x1

    .line 694
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 700
    :cond_c
    const/4 v12, 0x1

    if-ne v4, v12, :cond_11

    .line 701
    const-string/jumbo v12, "isNeedShowSimDialog: One OP02Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 702
    const/4 v12, 0x1

    return v12

    .line 704
    :cond_d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    .line 705
    const-string/jumbo v12, "isNeedShowSimDialog: One Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 706
    const/4 v12, 0x1

    return v12

    .line 710
    :cond_e
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_10

    .line 711
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 712
    add-int/lit8 v4, v4, 0x1

    .line 710
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 716
    :cond_10
    const/4 v12, 0x1

    if-ne v4, v12, :cond_11

    .line 717
    const-string/jumbo v12, "isNeedShowSimDialog: One non-OP02 Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 718
    const/4 v12, 0x1

    return v12

    .line 721
    :cond_11
    const-string/jumbo v12, "isNeedShowSimDialog: Show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 722
    const/4 v12, 0x0

    return v12
.end method

.method public static isNeedSwitchInOpPackage([Lcom/android/internal/telephony/Phone;[Landroid/telephony/RadioAccessFamily;)I
    .locals 14
    .param p0, "mProxyPhones"    # [Lcom/android/internal/telephony/Phone;
    .param p1, "rats"    # [Landroid/telephony/RadioAccessFamily;

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 294
    const-string/jumbo v11, "ro.operator.optr"

    const-string/jumbo v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "operatorSpec":Ljava/lang/String;
    array-length v11, p0

    new-array v6, v11, [I

    .line 296
    .local v6, "simOpInfo":[I
    array-length v11, p0

    new-array v7, v11, [I

    .line 298
    .local v7, "simType":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    .line 299
    .local v5, "phoneCount":I
    const/4 v2, 0x0

    .line 300
    .local v2, "insertedSimCount":I
    const/4 v3, 0x0

    .line 301
    .local v3, "insertedStatus":I
    new-array v0, v5, [Ljava/lang/String;

    .line 303
    .local v0, "currIccId":[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Operator Spec:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 304
    const-string/jumbo v11, "ro.mtk_disable_cap_switch"

    invoke-static {v11, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 305
    const-string/jumbo v9, "mtk_disable_cap_switch is true"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 306
    return v10

    .line 307
    :cond_0
    const-string/jumbo v11, "OP01"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 315
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_5

    .line 316
    sget-object v11, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v11, v11, v1

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v1

    .line 317
    aget-object v11, v0, v1

    if-eqz v11, :cond_1

    const-string/jumbo v11, ""

    aget-object v12, v0, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 318
    :cond_1
    const-string/jumbo v9, "error: iccid not found, not switch, return NOT_SWITCH_SIM_INFO_NOT_READY"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 319
    return v13

    .line 311
    .end local v1    # "i":I
    :cond_2
    return v9

    .line 321
    .restart local v1    # "i":I
    :cond_3
    const-string/jumbo v11, "N/A"

    aget-object v12, v0, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 322
    add-int/lit8 v2, v2, 0x1

    .line 323
    shl-int v11, v10, v1

    or-int/2addr v3, v11

    .line 315
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_5
    invoke-static {v6, v7, v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v11

    if-nez v11, :cond_6

    .line 327
    if-eq v2, v10, :cond_6

    .line 328
    return v13

    .line 333
    :cond_6
    const/4 v8, 0x0

    .local v8, "targetPhoneId":I
    :goto_1
    array-length v11, p1

    if-ge v8, v11, :cond_7

    .line 334
    const-string/jumbo v11, "ro.mtk_lte_support"

    invoke-static {v11, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v10, :cond_8

    .line 335
    aget-object v11, p1, v8

    invoke-virtual {v11}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v11

    and-int/lit16 v11, v11, 0x4000

    .line 336
    const/16 v12, 0x4000

    .line 335
    if-ne v11, v12, :cond_9

    .line 346
    :cond_7
    const-string/jumbo v11, "OP01"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 347
    invoke-static {v8, v6, v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->checkOp01LC(I[I[I)Z

    move-result v11

    if-eqz v11, :cond_a

    :goto_2
    return v9

    .line 340
    :cond_8
    aget-object v11, p1, v8

    invoke-virtual {v11}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v11

    and-int/lit8 v11, v11, 0x8

    .line 341
    const/16 v12, 0x8

    .line 340
    if-eq v11, v12, :cond_7

    .line 333
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_a
    move v9, v10

    .line 347
    goto :goto_2

    .line 349
    :cond_b
    return v9
.end method

.method public static isSimContainsCdmaApp(I)Z
    .locals 5
    .param p0, "simId"    # I

    .prologue
    const/4 v4, 0x0

    .line 613
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v0, v1, [I

    .line 614
    .local v0, "cardType":[I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 615
    const-string/jumbo v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[RadioCapSwitchUtil][getCardType]: SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    aget v1, v0, p0

    and-int/lit8 v1, v1, 0x4

    if-gtz v1, :cond_0

    .line 617
    aget v1, v0, p0

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_1

    .line 618
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 620
    :cond_1
    return v4
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 609
    const-string/jumbo v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[RadioCapSwitchUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return-void
.end method

.method public static updateIccid([Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p0, "mProxyPhones"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "bIsMajorPhone":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 152
    const/4 v0, 0x0

    .line 153
    const-string/jumbo v3, "ro.mtk_lte_support"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 154
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    and-int/lit16 v3, v3, 0x4000

    .line 155
    const/16 v4, 0x4000

    .line 154
    if-ne v3, v4, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 164
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ril.iccid.sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "currIccId":Ljava/lang/String;
    const-string/jumbo v3, "persist.radio.simswitch.iccid"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateIccid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 149
    .end local v1    # "currIccId":Ljava/lang/String;
    :cond_1
    return-void

    .line 159
    :cond_2
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    .line 160
    const/16 v4, 0x8

    .line 159
    if-ne v3, v4, :cond_0

    .line 161
    const/4 v0, 0x1

    goto :goto_1

    .line 151
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static updateSimImsiStatus(ILjava/lang/String;)V
    .locals 3
    .param p0, "slot"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSimImsiStatus slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 788
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    aget-object v0, v1, p0

    .line 789
    .local v0, "propStr":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    return-void
.end method
