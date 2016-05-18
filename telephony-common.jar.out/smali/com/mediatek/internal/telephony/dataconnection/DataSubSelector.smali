.class public Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
.super Ljava/lang/Object;
.source "DataSubSelector.java"


# static fields
.field public static final ACTION_MOBILE_DATA_ENABLE:Ljava/lang/String; = "android.intent.action.ACTION_MOBILE_DATA_ENABLE"

.field private static final BSP_PACKAGE:Z

.field private static final DBG:Z = true

.field public static final EXTRA_MOBILE_DATA_ENABLE_REASON:Ljava/lang/String; = "reason"

.field private static final NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field private static final OPERATOR_OM:Ljava/lang/String; = "OM"

.field private static final OPERATOR_OP01:Ljava/lang/String; = "OP01"

.field private static final OPERATOR_OP02:Ljava/lang/String; = "OP02"

.field private static final PROPERTY_3G_SIM:Ljava/lang/String; = "persist.radio.simswitch"

.field private static final PROPERTY_DEFAULT_DATA_ICCID:Ljava/lang/String; = "persist.radio.data.iccid"

.field private static final PROPERTY_ICCID:Ljava/lang/String; = "ril.iccid.sim"

.field private static final PROPERTY_MOBILE_DATA_ENABLE:Ljava/lang/String; = "persist.radio.mobile.data"

.field public static final REASON_MOBILE_DATA_ENABLE_SYSTEM:Ljava/lang/String; = "system"

.field public static final REASON_MOBILE_DATA_ENABLE_USER:Ljava/lang/String; = "user"

.field private static mOperatorSpec:Ljava/lang/String;


# instance fields
.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIntent:Landroid/content/Intent;

.field private mIsNeedWaitImsi:Z

.field private mIsNeedWaitUnlock:Z

.field private mPhoneNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "ro.mtk_bsp_package"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->BSP_PACKAGE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNum"    # I

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    .line 37
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 63
    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    const-string v1, "DataSubSelector is created"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 126
    iput p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    .line 127
    const-string v1, "ro.operator.optr"

    const-string v2, "OM"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operator Spec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->onSubInfoReady(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp01CapSwitch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V

    return-void
.end method

.method private checkOp01CapSwitch()Z
    .locals 17

    .prologue
    .line 746
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v12, v15, [I

    .line 747
    .local v12, "simOpInfo":[I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v13, v15, [I

    .line 748
    .local v13, "simType":[I
    const/4 v14, -0x1

    .line 749
    .local v14, "targetSim":I
    const/4 v5, 0x0

    .line 750
    .local v5, "insertedSimCount":I
    const/4 v6, 0x0

    .line 751
    .local v6, "insertedStatus":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v8, v15, [Z

    .line 752
    .local v8, "op01Usim":[Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v7, v15, [Z

    .line 753
    .local v7, "op01Sim":[Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v10, v15, [Z

    .line 754
    .local v10, "overseaUsim":[Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v9, v15, [Z

    .line 755
    .local v9, "overseaSim":[Z
    const-string v15, "persist.radio.simswitch.iccid"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 756
    .local v1, "capabilitySimIccid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v3, v15, [Ljava/lang/String;

    .line 758
    .local v3, "currIccId":[Ljava/lang/String;
    const-string v15, "checkOp01CapSwitch start"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 760
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v15, :cond_1

    .line 761
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ril.iccid.sim"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, v4, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v4

    .line 762
    const-string v15, "N/A"

    aget-object v16, v3, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 763
    add-int/lit8 v5, v5, 0x1

    .line 764
    const/4 v15, 0x1

    shl-int/2addr v15, v4

    or-int/2addr v6, v15

    .line 760
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 767
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkOp01CapSwitch : Inserted SIM count: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", insertedStatus: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 769
    invoke-static {v12, v13, v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v15

    if-nez v15, :cond_2

    .line 770
    const/4 v15, 0x0

    .line 891
    :goto_1
    return v15

    .line 774
    :cond_2
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v15, :cond_5

    .line 775
    if-nez v4, :cond_4

    .line 776
    const-string v11, "gsm.sim.ril.mcc.mnc"

    .line 780
    .local v11, "propStr":Ljava/lang/String;
    :goto_3
    const-string v15, ""

    invoke-static {v11, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "sim_lock"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 781
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkOp01CapSwitch : phone "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is sim lock"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 782
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z

    .line 774
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 778
    .end local v11    # "propStr":Ljava/lang/String;
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "gsm.sim.ril.mcc.mnc."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, v4, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "propStr":Ljava/lang/String;
    goto :goto_3

    .line 785
    .end local v11    # "propStr":Ljava/lang/String;
    :cond_5
    const-string v15, "persist.radio.simswitch"

    const-string v16, "1"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v2, v15, -0x1

    .line 787
    .local v2, "capabilitySimId":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "op01: capabilitySimIccid:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "capabilitySimId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 789
    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v15, :cond_a

    .line 791
    aget v15, v12, v4

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 792
    aget v15, v13, v4

    if-eqz v15, :cond_7

    .line 793
    const/4 v15, 0x1

    aput-boolean v15, v8, v4

    .line 789
    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 795
    :cond_7
    const/4 v15, 0x1

    aput-boolean v15, v7, v4

    goto :goto_5

    .line 797
    :cond_8
    aget v15, v12, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 798
    aget v15, v13, v4

    if-eqz v15, :cond_9

    .line 799
    const/4 v15, 0x1

    aput-boolean v15, v10, v4

    goto :goto_5

    .line 801
    :cond_9
    const/4 v15, 0x1

    aput-boolean v15, v9, v4

    goto :goto_5

    .line 806
    :cond_a
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "op01Usim: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v8}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 807
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "op01Sim: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v7}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 808
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "overseaUsim: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v10}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 809
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "overseaSim: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v9}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 811
    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v15, :cond_18

    .line 812
    aget-object v15, v3, v4

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 813
    invoke-static {v4, v8, v7, v10, v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I

    move-result v14

    .line 815
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "op01: i = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", currIccId : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v3, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", targetSim : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 817
    aget-boolean v15, v8, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 818
    const-string v15, "op01-C1: cur is old op01 USIM, no change"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 819
    if-eq v2, v4, :cond_b

    .line 820
    const-string v15, "op01-C1a: old op01 USIM change slot, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 821
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 823
    :cond_b
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 824
    :cond_c
    aget-boolean v15, v7, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 825
    const/4 v15, -0x1

    if-eq v14, v15, :cond_e

    .line 826
    const-string v15, "op01-C2: cur is old op01 SIM but find op01 USIM, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 827
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 832
    :cond_d
    :goto_7
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 828
    :cond_e
    if-eq v2, v4, :cond_d

    .line 829
    const-string v15, "op01-C2a: old op01 SIM change slot, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 830
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_7

    .line 833
    :cond_f
    aget-boolean v15, v10, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_12

    .line 834
    const/4 v15, -0x1

    if-eq v14, v15, :cond_11

    .line 835
    const-string v15, "op01-C3: cur is old OS USIM but find op01 SIMs, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 836
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 841
    :cond_10
    :goto_8
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 837
    :cond_11
    if-eq v2, v4, :cond_10

    .line 838
    const-string v15, "op01-C3a: old OS USIM change slot, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 839
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_8

    .line 842
    :cond_12
    aget-boolean v15, v9, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_15

    .line 843
    const/4 v15, -0x1

    if-eq v14, v15, :cond_14

    .line 844
    const-string v15, "op01-C4: cur is old OS SIM but find op01 SIMs/OS USIM, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 845
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 850
    :cond_13
    :goto_9
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 846
    :cond_14
    if-eq v2, v4, :cond_13

    .line 847
    const-string v15, "op01-C4a: old OS SIM change slot, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 848
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_9

    .line 851
    :cond_15
    const/4 v15, -0x1

    if-eq v14, v15, :cond_16

    .line 852
    const-string v15, "op01-C5: cur is old non-op01 SIM/USIM but find higher SIM, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 853
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 854
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 856
    :cond_16
    const-string v15, "op01-C6: no higher priority SIM, no cahnge"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 857
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 811
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 861
    :cond_18
    invoke-static {v2, v8, v7, v10, v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I

    move-result v14

    .line 863
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "op01: target SIM :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 864
    aget-boolean v15, v8, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    .line 865
    const-string v15, "op01-C7: cur is new op01 USIM, no change"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 866
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 867
    :cond_19
    aget-boolean v15, v7, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1b

    .line 868
    const/4 v15, -0x1

    if-eq v14, v15, :cond_1a

    .line 869
    const-string v15, "op01-C8: cur is new op01 SIM but find op01 USIM, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 870
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 872
    :cond_1a
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 873
    :cond_1b
    aget-boolean v15, v10, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1d

    .line 874
    const/4 v15, -0x1

    if-eq v14, v15, :cond_1c

    .line 875
    const-string v15, "op01-C9: cur is new OS USIM but find op01 SIMs, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 876
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 878
    :cond_1c
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 879
    :cond_1d
    aget-boolean v15, v9, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1f

    .line 880
    const/4 v15, -0x1

    if-eq v14, v15, :cond_1e

    .line 881
    const-string v15, "op01-C10: cur is new OS SIM but find op01 SIMs/OS USIM, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 882
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 884
    :cond_1e
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 885
    :cond_1f
    const/4 v15, -0x1

    if-eq v14, v15, :cond_20

    .line 886
    const-string v15, "op01-C11: cur is non-op01 but find higher priority SIM, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 887
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 891
    :goto_a
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 889
    :cond_20
    const-string v15, "op01-C12: no higher priority SIM, no cahnge"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_a
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 989
    const-string v0, "DataSubSelector"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 995
    const-string v0, "DataSubSelector"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return-void
.end method

.method private onSubInfoReady(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 138
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->BSP_PACKAGE:Z

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "Don\'t support BSP Package."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    const-string v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01(Landroid/content/Intent;)V

    goto :goto_0

    .line 145
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    const-string v1, "OP02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02(Landroid/content/Intent;)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOmLenovo(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setCapability(I)Z
    .locals 12
    .param p1, "phoneId"    # I

    .prologue
    .line 933
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v8, v10, [I

    .line 934
    .local v8, "phoneRat":[I
    const/4 v7, 0x1

    .line 936
    .local v7, "isSwitchSuccess":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setCapability: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 938
    const-string v10, "persist.radio.simswitch"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 939
    .local v1, "curr3GSim":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current 3G Sim = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 941
    if-eqz v1, :cond_0

    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 942
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 943
    .local v0, "curr3GPhoneId":I
    add-int/lit8 v10, p1, 0x1

    if-ne v0, v10, :cond_0

    .line 944
    const-string v10, "Current 3G phone equals target phone, don\'t trigger switch"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    move v10, v7

    .line 984
    .end local v0    # "curr3GPhoneId":I
    :goto_0
    return v10

    .line 950
    :cond_0
    :try_start_0
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 952
    .local v5, "iTel":Lcom/android/internal/telephony/ITelephony;
    const-string v10, "phoneEx"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v6

    .line 954
    .local v6, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v5, :cond_1

    .line 955
    const-string v10, "Can not get phone service"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 956
    const/4 v10, 0x0

    goto :goto_0

    .line 959
    :cond_1
    invoke-interface {v5, p1}, Lcom/android/internal/telephony/ITelephony;->getRadioAccessFamily(I)I

    move-result v2

    .line 960
    .local v2, "currRat":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current phoneRat:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 962
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v9, v10, [Landroid/telephony/RadioAccessFamily;

    .line 963
    .local v9, "rat":[Landroid/telephony/RadioAccessFamily;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v10, :cond_4

    .line 964
    if-ne p1, v4, :cond_2

    .line 965
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM switch to Phone"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 966
    const v10, 0x14008

    aput v10, v8, v4

    .line 972
    :goto_2
    new-instance v10, Landroid/telephony/RadioAccessFamily;

    aget v11, v8, v4

    invoke-direct {v10, v4, v11}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v10, v9, v4

    .line 963
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 970
    :cond_2
    const/high16 v10, 0x10000

    aput v10, v8, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 978
    .end local v2    # "currRat":I
    .end local v4    # "i":I
    .end local v5    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .end local v6    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v9    # "rat":[Landroid/telephony/RadioAccessFamily;
    :catch_0
    move-exception v3

    .line 979
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v10, "Set phone rat fail!!!"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 980
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 981
    const/4 v7, 0x0

    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_3
    move v10, v7

    .line 984
    goto :goto_0

    .line 974
    .restart local v2    # "currRat":I
    .restart local v4    # "i":I
    .restart local v5    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .restart local v6    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .restart local v9    # "rat":[Landroid/telephony/RadioAccessFamily;
    :cond_4
    :try_start_1
    invoke-interface {v6, v9}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 975
    const-string v10, "Set phone rat fail!!!"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 976
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private setDataEnabled(IZ)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataEnabled: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 897
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 898
    .local v1, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 899
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 900
    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 903
    .local v0, "phoneSubId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 904
    invoke-virtual {v1, v0, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_0
.end method

.method private setDefaultData(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    .line 910
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    .line 911
    .local v5, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 912
    .local v4, "sub":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v6

    int-to-long v2, v6

    .line 915
    .local v2, "currSub":J
    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 916
    const-string v6, "persist.radio.simswitch"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, "curr3GSim":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 918
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 919
    .local v0, "curr3GPhoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 920
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDefaultData current 3G subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 924
    .end local v0    # "curr3GPhoneId":I
    .end local v1    # "curr3GSim":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDefaultData: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", current default sub:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 925
    int-to-long v6, v4

    cmp-long v6, v6, v2

    if-eqz v6, :cond_1

    .line 926
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    .line 930
    :goto_0
    return-void

    .line 928
    :cond_1
    const-string v6, "setDefaultData: default data unchanged"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private subSelectorForOm(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 157
    const-string v5, "DataSubSelector for OM: only for capability switch; for default data, use google"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 160
    const/4 v3, -0x1

    .line 161
    .local v3, "phoneId":I
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v5, [Ljava/lang/String;

    .line 164
    .local v0, "currIccId":[Ljava/lang/String;
    const-string v5, "persist.radio.data.iccid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "defaultIccid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default data Iccid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 166
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v5, :cond_0

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ril.iccid.sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    .line 168
    aget-object v5, v0, v2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 169
    move v3, v2

    .line 185
    :cond_0
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 186
    const-string v5, "DataSubSelector for OM: do not switch because of sim locking"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 187
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z

    .line 188
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 197
    :cond_1
    :goto_1
    return-void

    .line 173
    :cond_2
    const-string v5, "N/A"

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clear mcc.mnc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 176
    if-nez v2, :cond_4

    .line 177
    const-string v4, "gsm.sim.ril.mcc.mnc"

    .line 181
    .local v4, "propStr":Ljava/lang/String;
    :goto_2
    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .end local v4    # "propStr":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "propStr":Ljava/lang/String;
    goto :goto_2

    .line 192
    .end local v4    # "propStr":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default data phoneid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 193
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 195
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_1
.end method

.method private subSelectorForOmLenovo(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 201
    const-string v7, "DataSubSelector for LENOVO-OM: only for capability switch; for default data OR  Single SIM, use google"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 204
    const/4 v6, -0x1

    .line 205
    .local v6, "phoneId":I
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v7, [Ljava/lang/String;

    .line 207
    .local v0, "currIccId":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 208
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 209
    .local v5, "insertedStatus":I
    const-string v7, "simDetectStatus"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 212
    .local v2, "detectedType":I
    const-string v7, "persist.radio.data.iccid"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "defaultIccid":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Default data Iccid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 214
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v7, :cond_0

    .line 215
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ril.iccid.sim"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    .line 216
    aget-object v7, v0, v3

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 217
    move v6, v3

    .line 223
    :cond_0
    if-ne v6, v9, :cond_6

    .line 224
    const/4 v3, 0x0

    :goto_1
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v7, :cond_3

    .line 225
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ril.iccid.sim"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    .line 226
    const-string v7, "N/A"

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 227
    add-int/lit8 v4, v4, 0x1

    .line 228
    shl-int v7, v10, v3

    or-int/2addr v5, v7

    .line 224
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 214
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inserted SIM count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", insertedStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 233
    if-ne v4, v10, :cond_5

    .line 234
    const/4 v3, 0x0

    :goto_2
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v7, :cond_4

    .line 235
    shl-int v7, v10, v3

    and-int/2addr v7, v5

    if-eqz v7, :cond_8

    .line 236
    move v6, v3

    .line 240
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Single SIM:set capabliity to this phoneId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 242
    :cond_5
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 246
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Default data phoneid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 247
    if-eq v6, v9, :cond_7

    .line 249
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 251
    :cond_7
    return-void

    .line 234
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private subSelectorForOp01(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 527
    const/4 v9, -0x1

    .line 528
    .local v9, "phoneId":I
    const/4 v4, 0x0

    .line 529
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 530
    .local v5, "insertedStatus":I
    const-string v11, "simDetectStatus"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 531
    .local v2, "detectedType":I
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v11, [Ljava/lang/String;

    .line 533
    .local v0, "currIccId":[Ljava/lang/String;
    const-string v11, "DataSubSelector for op01"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 535
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_2

    .line 536
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ril.iccid.sim"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v3

    .line 537
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currIccId["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 538
    const-string v11, "N/A"

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 539
    add-int/lit8 v4, v4, 0x1

    .line 540
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    or-int/2addr v5, v11

    .line 535
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 542
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "clear mcc.mnc:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 544
    if-nez v3, :cond_1

    .line 545
    const-string v10, "gsm.sim.ril.mcc.mnc"

    .line 549
    .local v10, "propStr":Ljava/lang/String;
    :goto_2
    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 547
    .end local v10    # "propStr":Ljava/lang/String;
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "propStr":Ljava/lang/String;
    goto :goto_2

    .line 553
    .end local v10    # "propStr":Ljava/lang/String;
    :cond_2
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 554
    const-string v11, "DataSubSelector for OP01: do not switch because of sim locking"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 555
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z

    .line 556
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 741
    :cond_3
    :goto_3
    return-void

    .line 560
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Inserted SIM count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", insertedStatus: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 563
    const-string v11, "persist.radio.data.iccid"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "defaultIccid":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Default data Iccid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 566
    if-nez v4, :cond_5

    .line 571
    const-string v11, "C0: No SIM inserted, set data unset"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 572
    const/4 v11, -0x1

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto :goto_3

    .line 573
    :cond_5
    const/4 v11, 0x1

    if-ne v4, v11, :cond_f

    .line 574
    const/4 v3, 0x0

    :goto_4
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_6

    .line 575
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    and-int/2addr v11, v5

    if-eqz v11, :cond_8

    .line 576
    move v9, v3

    .line 581
    :cond_6
    const/4 v11, 0x1

    if-ne v2, v11, :cond_9

    .line 586
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C1: Single SIM + New SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 587
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 588
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 590
    :cond_7
    const/4 v11, 0x0

    invoke-direct {p0, v9, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_3

    .line 574
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 592
    :cond_9
    if-eqz v1, :cond_a

    const-string v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 598
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C3: Single SIM + Non Data SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 599
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 600
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 602
    :cond_b
    const/4 v11, 0x0

    invoke-direct {p0, v9, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_3

    .line 604
    :cond_c
    aget-object v11, v0, v9

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 609
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C2: Single SIM + Data SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 610
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 611
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto/16 :goto_3

    .line 618
    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C3: Single SIM + Non Data SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 619
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 620
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 622
    :cond_e
    const/4 v11, 0x0

    invoke-direct {p0, v9, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_3

    .line 627
    :cond_f
    const/4 v11, 0x2

    if-lt v4, v11, :cond_3

    .line 628
    const/4 v11, 0x1

    if-ne v2, v11, :cond_19

    .line 629
    const-string v11, "newSIMSlot"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 632
    .local v7, "newSimStatus":I
    const/4 v6, 0x1

    .line 633
    .local v6, "isAllNewSim":Z
    const/4 v3, 0x0

    :goto_5
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_11

    .line 634
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    and-int/2addr v11, v7

    if-nez v11, :cond_10

    .line 635
    const/4 v6, 0x0

    .line 633
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 639
    :cond_11
    if-eqz v6, :cond_12

    .line 644
    const-string v11, "C4: Multi SIM + All New SIM: Set 34G to sub1"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 735
    .end local v6    # "isAllNewSim":Z
    .end local v7    # "newSimStatus":I
    :goto_6
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp01CapSwitch()Z

    move-result v11

    if-nez v11, :cond_3

    .line 737
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    goto/16 :goto_3

    .line 648
    .restart local v6    # "isAllNewSim":Z
    .restart local v7    # "newSimStatus":I
    :cond_12
    if-eqz v1, :cond_13

    const-string v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 654
    :cond_13
    const-string v11, "C6: Multi SIM + New SIM + Non Default SIM: No Change"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 658
    :cond_14
    const/4 v3, 0x0

    :goto_7
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_15

    .line 659
    aget-object v11, v0, v3

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 660
    move v9, v3

    .line 665
    :cond_15
    const/4 v11, -0x1

    if-eq v9, v11, :cond_18

    .line 670
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C5: Multi SIM + New SIM + Default SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 675
    const/4 v8, 0x0

    .line 676
    .local v8, "nonDefaultPhoneId":I
    if-nez v9, :cond_17

    .line 677
    const/4 v8, 0x1

    .line 681
    :goto_8
    const/4 v11, 0x0

    invoke-direct {p0, v8, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_6

    .line 658
    .end local v8    # "nonDefaultPhoneId":I
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 679
    .restart local v8    # "nonDefaultPhoneId":I
    :cond_17
    const/4 v8, 0x0

    goto :goto_8

    .line 687
    .end local v8    # "nonDefaultPhoneId":I
    :cond_18
    const-string v11, "C6: Multi SIM + New SIM + Non Default SIM: No Change"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 694
    .end local v6    # "isAllNewSim":Z
    .end local v7    # "newSimStatus":I
    :cond_19
    if-eqz v1, :cond_1a

    const-string v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 700
    :cond_1a
    const-string v11, "C8: Do nothing"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    goto :goto_6

    .line 702
    :cond_1b
    const/4 v3, 0x0

    :goto_9
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_1c

    .line 703
    aget-object v11, v0, v3

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 704
    move v9, v3

    .line 708
    :cond_1c
    const/4 v11, -0x1

    if-eq v9, v11, :cond_1f

    .line 713
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C7: Multi SIM + All Old SIM + Default SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 718
    const/4 v8, 0x0

    .line 719
    .restart local v8    # "nonDefaultPhoneId":I
    if-nez v9, :cond_1e

    .line 720
    const/4 v8, 0x1

    .line 724
    :goto_a
    const/4 v11, 0x0

    invoke-direct {p0, v8, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_6

    .line 702
    .end local v8    # "nonDefaultPhoneId":I
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 722
    .restart local v8    # "nonDefaultPhoneId":I
    :cond_1e
    const/4 v8, 0x0

    goto :goto_a

    .line 731
    .end local v8    # "nonDefaultPhoneId":I
    :cond_1f
    const-string v11, "C8: Do nothing"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private subSelectorForOp02(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 436
    const/4 v6, -0x1

    .line 437
    .local v6, "phoneId":I
    const/4 v3, 0x0

    .line 438
    .local v3, "insertedSimCount":I
    const/4 v4, 0x0

    .line 439
    .local v4, "insertedStatus":I
    const-string v10, "simDetectStatus"

    invoke-virtual {p1, v10, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 440
    .local v1, "detectedType":I
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v10, [Ljava/lang/String;

    .line 442
    .local v0, "currIccId":[Ljava/lang/String;
    const-string v10, "DataSubSelector for OP02"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 444
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v10, :cond_2

    .line 445
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ril.iccid.sim"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v2

    .line 446
    const-string v10, "N/A"

    aget-object v11, v0, v2

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 447
    add-int/lit8 v3, v3, 0x1

    .line 448
    shl-int v10, v12, v2

    or-int/2addr v4, v10

    .line 444
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "clear mcc.mnc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 452
    if-nez v2, :cond_1

    .line 453
    const-string v7, "gsm.sim.ril.mcc.mnc"

    .line 457
    .local v7, "propStr":Ljava/lang/String;
    :goto_2
    const-string v10, ""

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 455
    .end local v7    # "propStr":Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "propStr":Ljava/lang/String;
    goto :goto_2

    .line 461
    .end local v7    # "propStr":Ljava/lang/String;
    :cond_2
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v10}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 462
    const-string v10, "DataSubSelector for OP02: do not switch because of sim locking"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 463
    iput-boolean v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z

    .line 464
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 524
    :cond_3
    :goto_3
    return-void

    .line 468
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Inserted SIM count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", insertedStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 470
    const/4 v10, 0x4

    if-ne v1, v10, :cond_5

    .line 472
    const-string v10, "OP02 C0: Inserted status no change, do nothing"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 473
    :cond_5
    if-nez v3, :cond_6

    .line 478
    const-string v10, "OP02 C1: No SIM inserted, set data unset"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 479
    const/4 v10, -0x1

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto :goto_3

    .line 480
    :cond_6
    if-ne v3, v12, :cond_a

    .line 481
    const/4 v2, 0x0

    :goto_4
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v10, :cond_7

    .line 482
    shl-int v10, v12, v2

    and-int/2addr v10, v4

    if-eqz v10, :cond_8

    .line 483
    move v6, v2

    .line 491
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OP02 C2: Single SIM: Set Default data to phone:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 492
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 495
    const-string v8, "0"

    .line 496
    .local v8, "strEnabled":Ljava/lang/String;
    if-nez v6, :cond_9

    .line 497
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v10, "persist.radio.mobile.data"

    const-string v11, "0"

    invoke-static {v12, v10, v11}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 503
    :goto_5
    const-string v10, "1"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 504
    invoke-direct {p0, v6, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_3

    .line 481
    .end local v8    # "strEnabled":Ljava/lang/String;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 500
    .restart local v8    # "strEnabled":Ljava/lang/String;
    :cond_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v10, "persist.radio.mobile.data"

    const-string v11, "0"

    invoke-static {v13, v10, v11}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 506
    .end local v8    # "strEnabled":Ljava/lang/String;
    :cond_a
    const/4 v10, 0x2

    if-lt v3, v10, :cond_3

    .line 511
    const-string v10, "OP02 C3: Multi SIM: Set Default data to phone1"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 512
    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 517
    invoke-static {v12}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    .line 518
    .local v5, "phone2SubId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    .line 519
    .local v9, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v9, :cond_b

    invoke-virtual {v9, v5}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 520
    invoke-direct {p0, v13, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 522
    :cond_b
    invoke-direct {p0, v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_3
.end method
