.class Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;
.super Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;
.source "SvlteIrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CdmaController"
.end annotation


# static fields
.field private static final EVENT_CDMA_CARD_TYPE_CHANGED:I = 0xd0

.field private static final EVENT_CDMA_PLMN_CHANGED:I = 0xcb

.field private static final EVENT_DUAL_PHONE_AVAILABLE:I = 0xc9

.field private static final EVENT_DUAL_PHONE_POWER_ON:I = 0xca

.field private static final EVENT_NO_SERVICE_DELAY:I = 0xdd

.field private static final EVENT_RADIO_OFF_NOT_AVAILABLE:I = 0xcf

.field private static final PREF_IR_CDMA_NETWORK_TYPE:Ljava/lang/String; = "com.mediatek.ir.cdma.network.type"

.field private static final PREF_IR_ROAMING_INFO:Ljava/lang/String; = "mediatek_ir_roaming_info"


# instance fields
.field private mIsCT3GCardType:Z

.field private mPlmn:[Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
    .param p2, "controller"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
    .param p3, "nltePhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p4, "activePhoneId"    # I

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    .line 1038
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/android/internal/telephony/PhoneBase;I)V

    .line 1034
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mIsCT3GCardType:Z

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " nltePhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->logdForController(Ljava/lang/String;)V

    .line 1040
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->registerBaseListener()V

    .line 1041
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->setState(I)V

    .line 1037
    return-void
.end method

.method private enablePause(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " enablePause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->logdForController(Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mPhoneControllerActivePhoneId:I

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap1(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enablePause(), enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not ct dual mode sim, return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap4(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 1061
    return-void

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaRegistrationSuspendEnabled(ZLandroid/os/Message;)V

    .line 1064
    if-nez p1, :cond_1

    .line 1065
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->enableServiceStateNotify(Z)V

    .line 1057
    :cond_1
    return-void
.end method

.method private enableServiceStateNotify(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " enableServiceStateNotify("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->logdForController(Ljava/lang/String;)V

    .line 1301
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 1303
    .local v0, "csst":Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->enableServiceStateNotify(Z)V

    .line 1299
    return-void
.end method

.method private isEarlySuspendCTCard(I)Z
    .locals 4
    .param p1, "cardTypeVal"    # I

    .prologue
    .line 1203
    const/4 v1, 0x0

    .line 1205
    .local v1, "retSuspendCTCard":Z
    invoke-static {p1}, Lcom/android/internal/telephony/IccCardConstants$CardType;->getCardTypeFromInt(I)Lcom/android/internal/telephony/IccCardConstants$CardType;

    move-result-object v0

    .line 1206
    .local v0, "cardType":Lcom/android/internal/telephony/IccCardConstants$CardType;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$CardType;->CT_3G_UIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    if-eq v0, v2, :cond_0

    .line 1207
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$CardType;->CT_UIM_SIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    if-ne v0, v2, :cond_1

    .line 1208
    :cond_0
    const/4 v1, 0x1

    .line 1209
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mIsCT3GCardType:Z

    .line 1213
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEarlySuspendCTCard, cardType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1214
    const-string/jumbo v3, " retSuspendCTCard="

    .line 1213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1215
    const-string/jumbo v3, " mIsCT3GCardType="

    .line 1213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1215
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mIsCT3GCardType:Z

    .line 1213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->logdForController(Ljava/lang/String;)V

    .line 1216
    return v1

    .line 1211
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mIsCT3GCardType:Z

    goto :goto_0
.end method

.method private registerBaseListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1045
    const-string/jumbo v0, " registerBaseListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->logdForController(Ljava/lang/String;)V

    .line 1046
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc9

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1047
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xca

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1048
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaCardType(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1044
    return-void
.end method

.method private registerPlmnChangedListener()V
    .locals 3

    .prologue
    .line 1070
    const-string/jumbo v0, " registerPlmnChangedListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->logdForController(Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xcb

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForMccMncChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1069
    return-void
.end method

.method private registerSpecialCasesListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1080
    const-string/jumbo v0, " registerSpecialCasesListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->logdForController(Ljava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v1, 0x137

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1082
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xcf

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1079
    return-void
.end method

.method private unregisterBaseListener()V
    .locals 1

    .prologue
    .line 1052
    const-string/jumbo v0, " unregisterBaseListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->logdForController(Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 1054
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 1051
    return-void
.end method

.method private unregisterPlmnChangedListener()V
    .locals 2

    .prologue
    .line 1075
    const-string/jumbo v0, " unregisterPlmnChangedListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->logdForController(Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMccMncChange(Landroid/os/Handler;)V

    .line 1074
    return-void
.end method

.method private unregisterSpecialCasesListener()V
    .locals 1

    .prologue
    .line 1086
    const-string/jumbo v0, " unregisterSpecialCasesListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->logdForController(Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1088
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 1085
    return-void
.end method


# virtual methods
.method protected defaultMessageHandler(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x4

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1100
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->getState()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 1101
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x137

    if-eq v5, v6, :cond_0

    .line 1102
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0xcb

    if-ne v5, v6, :cond_1

    .line 1103
    :cond_0
    return-void

    .line 1105
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1106
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1197
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->defaultMessageHandler(Landroid/os/Message;)V

    .line 1099
    :cond_2
    :goto_0
    return-void

    .line 1108
    :sswitch_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->removeNoServiceMessage()V

    .line 1109
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->registerSpecialCasesListener()V

    .line 1110
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v5, :cond_3

    .line 1111
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v5, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onRadioStateChanged(Z)V

    .line 1113
    :cond_3
    iput v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mPreVoiceState:I

    .line 1114
    iput v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mPreDataState:I

    .line 1115
    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mIsFirstRoundSearch:Z

    goto :goto_0

    .line 1118
    :sswitch_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    sget-object v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v5, v6, :cond_4

    .line 1119
    const-string/jumbo v5, " CDMA service state change at roaming, do nothing."

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->logdForController(Ljava/lang/String;)V

    .line 1120
    return-void

    .line 1122
    :cond_4
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/ServiceState;

    .line 1123
    .local v4, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilVoiceRegState()I

    move-result v2

    .line 1124
    .local v2, "regState":I
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v1

    .line 1125
    .local v1, "regDataState":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " EVENT_SERVICE_STATE_CHANGED-VoiceState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1126
    const-string/jumbo v6, " DataState: "

    .line 1125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1127
    const-string/jumbo v6, " mIsFirstRoundSearch"

    .line 1125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1127
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mIsFirstRoundSearch:Z

    .line 1125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->logdForController(Ljava/lang/String;)V

    .line 1128
    if-eq v2, v7, :cond_5

    .line 1129
    const/4 v5, 0x5

    if-ne v2, v5, :cond_6

    .line 1132
    :cond_5
    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->setServiceType(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    .line 1133
    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mIsFirstRoundSearch:Z

    .line 1144
    :goto_1
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mPreVoiceState:I

    .line 1145
    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mPreDataState:I

    goto :goto_0

    .line 1130
    :cond_6
    if-eq v1, v7, :cond_5

    .line 1131
    const/4 v5, 0x5

    if-eq v1, v5, :cond_5

    .line 1134
    if-eqz v2, :cond_7

    .line 1135
    if-ne v2, v10, :cond_9

    .line 1136
    :cond_7
    if-eqz v1, :cond_8

    .line 1137
    if-ne v1, v10, :cond_9

    .line 1138
    :cond_8
    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->setServiceType(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    .line 1139
    iput-boolean v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mIsFirstRoundSearch:Z

    goto :goto_1

    .line 1141
    :cond_9
    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SEARCHING:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->setServiceType(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    goto :goto_1

    .line 1148
    .end local v1    # "regDataState":I
    .end local v2    # "regState":I
    .end local v4    # "serviceState":Landroid/telephony/ServiceState;
    :sswitch_2
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get6()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->postponeNoServiceMessageIfNeeded(I)V

    .line 1149
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 1150
    new-array v5, v7, [Ljava/lang/String;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mPlmn:[Ljava/lang/String;

    .line 1151
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mPlmn:[Ljava/lang/String;

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    aput-object v5, v6, v8

    .line 1152
    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->enableServiceStateNotify(Z)V

    .line 1153
    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->setState(I)V

    .line 1154
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v5, :cond_2

    .line 1155
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mPlmn:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-interface {v5, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onPlmnChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1160
    :sswitch_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->removeNoServiceMessage()V

    .line 1161
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->unregisterSpecialCasesListener()V

    .line 1162
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_b

    .line 1163
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->unregisterPlmnChangedListener()V

    .line 1164
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->setState(I)V

    .line 1168
    :goto_2
    iput v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mPreVoiceState:I

    .line 1169
    iput v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mPreDataState:I

    .line 1170
    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mIsFirstRoundSearch:Z

    .line 1171
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v5, :cond_a

    .line 1172
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v5, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onRadioStateChanged(Z)V

    .line 1174
    :cond_a
    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->setServiceType(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    goto/16 :goto_0

    .line 1166
    :cond_b
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->setState(I)V

    goto :goto_2

    .line 1177
    :sswitch_4
    const-string/jumbo v5, "EVENT_CDMA_CARD_TYPE_CHANGED"

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->logdForController(Ljava/lang/String;)V

    .line 1178
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 1179
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_c

    .line 1180
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 1181
    .local v3, "resultType":[I
    if-eqz v3, :cond_2

    .line 1182
    aget v5, v3, v8

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->isEarlySuspendCTCard(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1183
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1185
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    .line 1184
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(I)Z

    move-result v5

    .line 1183
    if-eqz v5, :cond_2

    .line 1186
    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->enablePause(Z)V

    .line 1187
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-virtual {v5, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->setEnableIr(Z)V

    goto/16 :goto_0

    .line 1192
    .end local v3    # "resultType":[I
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EVENT_CDMA_CARD_TYPE_CHANGED, ar.exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1193
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1192
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->logdForController(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1106
    :sswitch_data_0
    .sparse-switch
        0xca -> :sswitch_0
        0xcb -> :sswitch_2
        0xcf -> :sswitch_3
        0xd0 -> :sswitch_4
        0x137 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 1093
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->unregisterBaseListener()V

    .line 1094
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->unregisterPlmnChangedListener()V

    .line 1095
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->unregisterSpecialCasesListener()V

    .line 1092
    return-void
.end method

.method protected enableNoSerivceDelay()Z
    .locals 1

    .prologue
    .line 1308
    const/4 v0, 0x0

    return v0
.end method

.method public isCt3gCardType()Z
    .locals 1

    .prologue
    .line 1220
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mIsCT3GCardType:Z

    return v0
.end method

.method protected logdForController(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " CdmaController, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap4(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 1317
    return-void
.end method

.method protected msgToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "msgWhat"    # I

    .prologue
    .line 1243
    const-string/jumbo v0, "[CdmaController]-"

    .line 1244
    .local v0, "msg":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 1272
    :goto_0
    return-object v0

    .line 1246
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "EVENT_DUAL_PHONE_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1249
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "EVENT_DUAL_PHONE_POWER_ON"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1252
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "EVENT_CDMA_PLMN_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1255
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "EVENT_SERVICE_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1258
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "EVENT_RADIO_OFF_NOT_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1261
    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "EVENT_RADIO_NO_SERVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1264
    :sswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "EVENT_NO_SERVICE_DELAY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1267
    :sswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "EVENT_ROAMING_MODE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1244
    nop

    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcb -> :sswitch_2
        0xcf -> :sswitch_4
        0xdd -> :sswitch_6
        0x136 -> :sswitch_5
        0x137 -> :sswitch_3
        0x138 -> :sswitch_7
    .end sparse-switch
.end method

.method protected processInitState(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1225
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1236
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->processInitState(Landroid/os/Message;)V

    .line 1224
    :goto_0
    return-void

    .line 1227
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->removeNoServiceMessage()V

    .line 1228
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->enablePause(Z)V

    .line 1230
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->resetToInitialState()V

    .line 1232
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->registerPlmnChangedListener()V

    .line 1233
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->setState(I)V

    goto :goto_0

    .line 1225
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
    .end packed-switch
.end method

.method public resumeNetwork()V
    .locals 3

    .prologue
    .line 1293
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    .line 1294
    .local v0, "currentRoamingMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " resumeNetwork:  currentRoamingMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->logdForController(Ljava/lang/String;)V

    .line 1295
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->enableServiceStateNotify(Z)V

    .line 1296
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeCdmaRegistration(Landroid/os/Message;)V

    .line 1292
    return-void
.end method

.method public setIfEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 1313
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->enablePause(Z)V

    .line 1312
    return-void
.end method

.method public setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 3
    .param p1, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 1277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " setRoamingMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->logdForController(Ljava/lang/String;)V

    .line 1278
    const/4 v0, 0x0

    .line 1279
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v1

    if-eq p1, v1, :cond_1

    .line 1280
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    .line 1281
    const/16 v2, 0x138

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1280
    invoke-static {v1, p1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap2(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z

    move-result v0

    .line 1285
    .local v0, "ret":Z
    :goto_0
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->setState(I)V

    .line 1286
    if-nez v0, :cond_0

    .line 1287
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->enableServiceStateNotify(Z)V

    .line 1276
    :cond_0
    return-void

    .line 1283
    .local v0, "ret":Z
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap2(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z

    move-result v0

    .local v0, "ret":Z
    goto :goto_0
.end method
