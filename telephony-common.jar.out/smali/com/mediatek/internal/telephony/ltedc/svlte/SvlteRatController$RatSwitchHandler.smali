.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;
.super Landroid/os/Handler;
.source "SvlteRatController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RatSwitchHandler"
.end annotation


# static fields
.field private static final EVENT_ACTIVE_PDP:I = 0x6d

.field private static final EVENT_ACTIVE_PDP_DONE:I = 0x6e

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x72

.field private static final EVENT_CDMA_RADIO_OFF:I = 0x6b

.field private static final EVENT_CDMA_RADIO_ON:I = 0x6a

.field private static final EVENT_CHECK_RADIO_CHANGE_DONE:I = 0x6f

.field private static final EVENT_CONFIG_EVDO_MODE:I = 0x67

.field private static final EVENT_DEACTIVE_PDP:I = 0x66

.field private static final EVENT_ECTMODE_CHANGED:I = 0x71

.field private static final EVENT_LTE_RADIO_OFF:I = 0x69

.field private static final EVENT_LTE_RADIO_ON:I = 0x68

.field private static final EVENT_NOTIFY_MODE_CHANGED:I = 0x70

.field private static final EVENT_SWITCH_SVLTE_MODE:I = 0x65

.field private static final EVENT_SWITCH_SVLTE_MODE_DONE:I = 0x6c


# instance fields
.field private mByEngineerMode:Z

.field private mCdmaRadioChanged:Z

.field private mLteRadioChanged:Z

.field private mNeedAllRadioChange:Z

.field private mRecordPriority:I

.field private mResponseMessage:Landroid/os/Message;

.field private mRoamingChanged:Z

.field private mSvlteRatChanged:Z

.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .line 1061
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1060
    return-void
.end method

.method private isEnableOrDisable4GSwitch()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1065
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq v1, v2, :cond_0

    .line 1066
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v1, v2, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return v0

    .line 1066
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerRadioOnOff()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1071
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerRadioOnOff, mRecordPriority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRecordPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1072
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRecordPriority:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1073
    return v5

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerRadioOnOff, lteon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1077
    const-string/jumbo v2, " cdmaon= "

    .line 1076
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1077
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    .line 1076
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1080
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_4

    .line 1081
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x69

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1084
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_3

    .line 1085
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mNeedAllRadioChange:Z

    .line 1101
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_6

    .line 1102
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1104
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6b

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1105
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_2

    .line 1106
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mNeedAllRadioChange:Z

    .line 1108
    :cond_2
    return v3

    .line 1087
    :cond_3
    return v3

    .line 1090
    :cond_4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_1

    .line 1091
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x68

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1095
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq v0, v1, :cond_1

    .line 1096
    return v3

    .line 1109
    :cond_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_7

    .line 1110
    return v3

    .line 1112
    :cond_6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_7

    .line 1113
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCTLteTddTestSupport()Z

    move-result v0

    .line 1112
    if-eqz v0, :cond_7

    .line 1114
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1116
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6a

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1117
    return v3

    .line 1120
    :cond_7
    return v5
.end method


# virtual methods
.method public doSwitch(ZLandroid/os/Message;I)V
    .locals 9
    .param p1, "forceSwitch"    # Z
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "recordPriority"    # I

    .prologue
    const/16 v8, 0x65

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1124
    iput p3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRecordPriority:I

    .line 1125
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get10(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1126
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get10(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1127
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1128
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get10(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .line 1129
    .local v2, "lis":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;
    if-eqz v2, :cond_0

    .line 1130
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get7(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get5(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;->onRoamingModeChange(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 1131
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;->onSvlteRatModeChangeStarted(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V

    .line 1127
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1135
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "lis":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get5(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap13(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 1136
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[doSwitch] mNewRadioTechMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1137
    const-string/jumbo v5, ", mNewSvlteRatMode="

    .line 1136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1137
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v5

    .line 1136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1138
    const-string/jumbo v5, ", mNewRoamingMode="

    .line 1136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1138
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get5(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    .line 1136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1139
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mResponseMessage:Landroid/os/Message;

    if-eqz v3, :cond_2

    .line 1140
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[doSwitch] mResponseMessage= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mResponseMessage:Landroid/os/Message;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1145
    :goto_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap0(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap8(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1146
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-set0(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Z)Z

    .line 1147
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v4, "[doSwitch] Flight mode has no power off md case, only switch phone."

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1148
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[doSwitch] mBlockByRadioPowerOff = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get0(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1149
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get2(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->toggleActivePhone(I)V

    .line 1150
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3, v7, v6, v6, p3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap10(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;ZZZI)V

    .line 1151
    return-void

    .line 1142
    :cond_2
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v4, "[doSwitch] mResponseMessage= null"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    goto :goto_1

    .line 1154
    :cond_3
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mResponseMessage:Landroid/os/Message;

    .line 1156
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get5(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap12(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 1157
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap7(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1158
    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1123
    :goto_2
    return-void

    .line 1159
    :cond_4
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    .line 1160
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->isEnableOrDisable4GSwitch()Z

    move-result v3

    .line 1159
    if-eqz v3, :cond_5

    .line 1161
    const/16 v3, 0x66

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 1164
    :cond_5
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 1165
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    sget-object v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v3, v4, :cond_6

    .line 1166
    const/16 v3, 0x67

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 1168
    :cond_6
    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1175
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1177
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EVENT_DEACTIVE_PDP, mNewSvlteRatMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    .line 1177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1178
    const-string/jumbo v4, ", mSvlteRatMode="

    .line 1177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    .line 1177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_1

    .line 1182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 1183
    const/16 v3, 0x72

    const/4 v4, 0x0

    .line 1182
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1184
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v3

    .line 1185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    int-to-long v4, v2

    const-string/jumbo v7, "SvlteRatControll"

    .line 1186
    const-wide/32 v8, 0x50910

    .line 1185
    const/4 v6, 0x0

    .line 1184
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowed(JZLjava/lang/String;J)V

    goto/16 :goto_0

    .line 1187
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_2

    .line 1188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 1189
    const/16 v3, 0x72

    const/4 v4, 0x0

    .line 1188
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1190
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v3

    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    int-to-long v4, v2

    const-string/jumbo v7, "SvlteRatControll"

    .line 1192
    const-wide/32 v8, 0x50910

    .line 1191
    const/4 v6, 0x0

    .line 1190
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowed(JZLjava/lang/String;J)V

    goto/16 :goto_0

    .line 1194
    :cond_2
    const/16 v2, 0x67

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1197
    :cond_3
    const/16 v2, 0x67

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1202
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v3, "event EVENT_ALL_DATA_DISCONNECTED"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    if-eq v2, v3, :cond_4

    .line 1204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_5

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 1210
    :cond_4
    :goto_1
    const/16 v2, 0x67

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1206
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_4

    .line 1207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    goto :goto_1

    .line 1215
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v3, "EVENT_CONFIG_EVDO_MODE.config eHPRD"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq v2, v3, :cond_7

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v3, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v4, :cond_6

    const/4 v2, 0x1

    .line 1220
    :goto_2
    const/16 v4, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1218
    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->configEvdoMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1219
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 1223
    :cond_7
    const/16 v2, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1228
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v3, "EVENT_SWITCH_SVLTE_MODE."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_8

    .line 1232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    .line 1233
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get7(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    .line 1234
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get5(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v7

    const/16 v8, 0x71

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const/4 v8, 0x0

    .line 1232
    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    .line 1302
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setStkSwitchMode(I)V

    goto/16 :goto_0

    .line 1235
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->isEnableOrDisable4GSwitch()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1237
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get8(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    .line 1239
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v5

    .line 1240
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get7(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    .line 1241
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get5(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v7

    const/4 v8, 0x1

    .line 1242
    const/4 v9, 0x0

    .line 1238
    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    .line 1244
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    .line 1245
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get7(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    .line 1246
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get5(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v7

    .line 1247
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get8(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v8

    .line 1248
    const/16 v9, 0x71

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1244
    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    goto/16 :goto_3

    .line 1250
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v10

    .line 1251
    .local v10, "cardType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v13

    .line 1252
    .local v13, "hasCdmaApp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap2(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;I)Z

    move-result v14

    .line 1253
    .local v14, "hasUsimApp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap5(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v2

    if-nez v2, :cond_b

    if-eqz v13, :cond_e

    .line 1254
    :cond_b
    if-eqz v14, :cond_c

    .line 1255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v3, "cardType: CDMA CSIM, handled by GMSS"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    .line 1257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    .line 1258
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v5

    .line 1259
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get7(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    .line 1260
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get5(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v7

    .line 1261
    const/16 v8, 0x71

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1260
    const/4 v8, 0x0

    .line 1256
    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    goto/16 :goto_3

    .line 1263
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v3, "cardType: CDMA UIM"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1264
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    .line 1265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get8(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    .line 1264
    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    .line 1268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    .line 1269
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v5

    .line 1270
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get7(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    .line 1271
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get5(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1266
    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    .line 1274
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    .line 1275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v5

    .line 1276
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get7(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    .line 1277
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get5(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v7

    .line 1278
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v8

    .line 1279
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get8(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v9

    .line 1278
    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v8

    .line 1280
    const/16 v9, 0x71

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1274
    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    goto/16 :goto_3

    .line 1283
    :cond_e
    if-eqz v14, :cond_10

    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v3, "cardType: USIM"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1285
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCTLteTddTestSupport()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    .line 1288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    .line 1289
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v5

    .line 1290
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get7(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    .line 1291
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get5(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v7

    .line 1292
    const/16 v8, 0x71

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1291
    const/4 v8, 0x0

    .line 1286
    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    .line 1298
    :cond_f
    :goto_4
    const/16 v2, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3

    .line 1295
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v3, "cardType: SIM"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    goto :goto_4

    .line 1305
    .end local v10    # "cardType":I
    .end local v13    # "hasCdmaApp":Z
    .end local v14    # "hasUsimApp":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setStkSwitchMode(I)V

    goto/16 :goto_0

    .line 1310
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v3, "EVENT_ACTIVE_PDP."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    if-eq v2, v3, :cond_12

    .line 1313
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v3

    .line 1314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1313
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowed(JZLjava/lang/String;J)V

    .line 1316
    :cond_12
    const/16 v2, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1320
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v3, "EVENT_ACTIVE_PDP_DONE."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get2(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->toggleActivePhone(I)V

    .line 1323
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->registerRadioOnOff()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1324
    const/16 v2, 0x6c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1327
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    if-eq v2, v3, :cond_15

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mSvlteRatChanged:Z

    .line 1328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get7(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get5(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v3

    if-eq v2, v3, :cond_16

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRoamingChanged:Z

    .line 1330
    const/16 v2, 0x70

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 1331
    .local v18, "notifyModeMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 1333
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    .line 1335
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mByEngineerMode:Z

    if-nez v2, :cond_14

    .line 1336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-set3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get5(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-set2(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-set1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;I)I

    .line 1340
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update values. mSvlteRatMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mRoamingMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get7(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap0(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v3, "EVENT_SWITCH_SVLTE_MODE, not in airplane mode, set radio power"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1344
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 1345
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    goto/16 :goto_0

    .line 1327
    .end local v18    # "notifyModeMsg":Landroid/os/Message;
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1328
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1350
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v3, "EVENT_LTE_RADIO_OFF."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1351
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mLteRadioChanged:Z

    .line 1352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 1353
    const/16 v2, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1357
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v3, "EVENT_LTE_RADIO_ON."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1358
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mLteRadioChanged:Z

    .line 1359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 1360
    const/16 v2, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1364
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v3, "EVENT_CDMA_RADIO_OFF."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1365
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mCdmaRadioChanged:Z

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 1367
    const/16 v2, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1371
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v3, "EVENT_CDMA_RADIO_ON."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1372
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mCdmaRadioChanged:Z

    .line 1373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 1374
    const/16 v2, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1378
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EVENT_CHECK_RADIO_CHANGE_DONE. mNeedAllRadioChange = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1379
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mNeedAllRadioChange:Z

    .line 1378
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1379
    const-string/jumbo v4, "mCdmaRadioChanged = "

    .line 1378
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1380
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mCdmaRadioChanged:Z

    .line 1378
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1380
    const-string/jumbo v4, " mLteRadioChanged = "

    .line 1378
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1381
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mLteRadioChanged:Z

    .line 1378
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1382
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mNeedAllRadioChange:Z

    if-eqz v2, :cond_17

    .line 1383
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mCdmaRadioChanged:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mLteRadioChanged:Z

    if-eqz v2, :cond_0

    .line 1384
    const/16 v2, 0x6c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1387
    :cond_17
    const/16 v2, 0x6c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1392
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v3, "EVENT_SWITCH_SVLTE_MODE_DONE."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1393
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mNeedAllRadioChange:Z

    .line 1394
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mCdmaRadioChanged:Z

    .line 1395
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mLteRadioChanged:Z

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mResponseMessage:Landroid/os/Message;

    move-object/from16 v17, v0

    .line 1398
    .local v17, "message":Landroid/os/Message;
    if-eqz v17, :cond_18

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 1399
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    .line 1402
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRecordPriority:I

    move/from16 v20, v0

    .line 1403
    .local v20, "recordPriority":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRecordPriority:I

    .line 1404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mSvlteRatChanged:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRoamingChanged:Z

    const/4 v5, 0x1

    move/from16 v0, v20

    invoke-static {v2, v5, v3, v4, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap10(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;ZZZI)V

    goto/16 :goto_0

    .line 1407
    .end local v17    # "message":Landroid/os/Message;
    .end local v20    # "recordPriority":I
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v3, "EVENT_NOTIFY_MODE_CHANGED."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get10(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1409
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    aget-object v19, v2, v3

    .line 1410
    .local v19, "preMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    aget-object v12, v2, v3

    .line 1411
    .local v12, "curMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get10(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    .line 1412
    .local v11, "count":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_7
    if-ge v15, v11, :cond_0

    .line 1413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get10(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .line 1414
    .local v16, "lis":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;
    if-eqz v16, :cond_19

    .line 1415
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v12}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;->onSvlteRatModeChangeDone(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V

    .line 1412
    :cond_19
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 1421
    .end local v11    # "count":I
    .end local v12    # "curMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .end local v15    # "i":I
    .end local v16    # "lis":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;
    .end local v19    # "preMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string/jumbo v3, "EVENT_ECTMODE_CHANGED."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get10(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get10(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    .line 1424
    .restart local v11    # "count":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_8
    if-ge v15, v11, :cond_1b

    .line 1425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get10(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .line 1426
    .restart local v16    # "lis":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;
    if-eqz v16, :cond_1a

    .line 1427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;->onSvlteEctModeChangeDone(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V

    .line 1424
    :cond_1a
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 1431
    .end local v11    # "count":I
    .end local v15    # "i":I
    .end local v16    # "lis":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_1c

    .line 1432
    const/16 v2, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1433
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->isEnableOrDisable4GSwitch()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1434
    const/16 v2, 0x6d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1436
    :cond_1d
    const/16 v2, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1175
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_1
    .end packed-switch
.end method
