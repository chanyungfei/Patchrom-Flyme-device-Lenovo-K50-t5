.class Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;
.super Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;
.source "SvlteIrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LteController"
.end annotation


# static fields
.field private static final EVENT_DUAL_PHONE_AVAILABLE:I = 0x65

.field private static final EVENT_DUAL_PHONE_POWER_ON:I = 0x66

.field private static final EVENT_GSM_GET_AVAILABLE_NETWORKS_COMPLETED:I = 0x8c

.field private static final EVENT_GSM_PLMN_CHANGED:I = 0x68

.field private static final EVENT_GSM_SUSPENDED:I = 0x69

.field private static final EVENT_RADIO_OFF_NOT_AVAILABLE:I = 0x67


# instance fields
.field private mIsFindingAvailableNW:Z

.field private mModemResumeSessionId:I

.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
    .param p2, "controller"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
    .param p3, "ltePhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p4, "activePhoneId"    # I

    .prologue
    .line 667
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    .line 668
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/android/internal/telephony/PhoneBase;I)V

    .line 665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFindingAvailableNW:Z

    .line 669
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->registerBaseListener()V

    .line 670
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    .line 667
    return-void
.end method

.method private enableSuspend(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " enableSuspend: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 950
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 951
    .local v0, "enableVal":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhoneControllerActivePhoneId:I

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap1(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 952
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableSuspend(), enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not ct dual mode sim, return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap4(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 953
    return-void

    .line 950
    .end local v0    # "enableVal":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enableVal":I
    goto :goto_0

    .line 955
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRegistrationSuspendEnabled(ILandroid/os/Message;)V

    .line 948
    return-void
.end method

.method private isNoServiceState(I)Z
    .locals 2
    .param p1, "regState"    # I

    .prologue
    const/4 v1, 0x0

    .line 1001
    if-eqz p1, :cond_0

    .line 1002
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1003
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1005
    :cond_1
    return v1
.end method

.method private isPreStateBeforeNoService(I)Z
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 995
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 996
    if-ne p1, v0, :cond_1

    .line 995
    :cond_0
    :goto_0
    return v0

    .line 997
    :cond_1
    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerBaseListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 925
    const-string/jumbo v0, " registerBaseListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 927
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x66

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 924
    return-void
.end method

.method private registerSpecialCasesListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 959
    const-string/jumbo v0, " registerSpecialCasesListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 960
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v1, 0x137

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 961
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x67

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 958
    return-void
.end method

.method private registerSuspendListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 937
    const-string/jumbo v0, " registerSuspendListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x68

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 939
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x69

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnRegistrationSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 936
    return-void
.end method

.method private selectedPlmn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 971
    const/4 v0, 0x0

    .line 974
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v1, :cond_0

    .line 975
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPlmns:[Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onPreSelectPlmn([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 978
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 979
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPlmns:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 981
    :cond_1
    return-object v0
.end method

.method private unregisterBaseListener()V
    .locals 1

    .prologue
    .line 931
    const-string/jumbo v0, " unregisterBaseListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 933
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 930
    return-void
.end method

.method private unregisterSpecialCasesListener()V
    .locals 1

    .prologue
    .line 965
    const-string/jumbo v0, " unregisterSpecialCasesListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 966
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 967
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 964
    return-void
.end method

.method private unregisterSuspendListener()V
    .locals 1

    .prologue
    .line 943
    const-string/jumbo v0, " unregisterSuspendListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnPlmnChangeNotification(Landroid/os/Handler;)V

    .line 945
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRegistrationSuspended(Landroid/os/Handler;)V

    .line 942
    return-void
.end method


# virtual methods
.method public cancelAvailableNetworks()V
    .locals 2

    .prologue
    .line 703
    const-string/jumbo v0, " cancelAvailableNetworks"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 704
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFindingAvailableNW:Z

    if-eqz v0, :cond_0

    .line 705
    const-string/jumbo v0, " really cancelAvailableNetworks"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->cancelAvailableNetworks(Landroid/os/Message;)V

    .line 707
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFindingAvailableNW:Z

    .line 702
    :cond_0
    return-void
.end method

.method protected defaultMessageHandler(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v10, 0x136

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 719
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->getState()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 720
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x137

    if-eq v5, v6, :cond_0

    .line 721
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x69

    if-ne v5, v6, :cond_1

    .line 723
    :cond_0
    return-void

    .line 722
    :cond_1
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x68

    if-eq v5, v6, :cond_0

    .line 725
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 726
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 824
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->defaultMessageHandler(Landroid/os/Message;)V

    .line 718
    :cond_3
    :goto_0
    return-void

    .line 728
    :sswitch_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->removeNoServiceMessage()V

    .line 729
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->registerSpecialCasesListener()V

    .line 730
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v5, :cond_4

    .line 731
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v5, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onRadioStateChanged(Z)V

    .line 733
    :cond_4
    iput v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreVoiceState:I

    .line 734
    iput v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreDataState:I

    .line 735
    iput-boolean v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFindingAvailableNW:Z

    .line 736
    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFirstRoundSearch:Z

    goto :goto_0

    .line 739
    :sswitch_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    sget-object v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-eq v5, v6, :cond_5

    .line 740
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    sget-object v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_JPKR_CDMA:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v5, v6, :cond_6

    .line 741
    :cond_5
    const-string/jumbo v5, " LWG service state change at home, do nothing."

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 742
    return-void

    .line 744
    :cond_6
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/ServiceState;

    .line 745
    .local v4, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilVoiceRegState()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->convertVoiceRegState(I)I

    move-result v3

    .line 746
    .local v3, "regState":I
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v2

    .line 747
    .local v2, "regDataState":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " EVENT_SERVICE_STATE_CHANGED-VoiceState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 748
    const-string/jumbo v6, " DataState: "

    .line 747
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 749
    const-string/jumbo v6, " mIsFirstRoundSearch: "

    .line 747
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 749
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFirstRoundSearch:Z

    .line 747
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 750
    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreVoiceState:I

    if-ne v5, v3, :cond_7

    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreDataState:I

    if-ne v5, v2, :cond_7

    .line 751
    const-string/jumbo v5, " Voice state and Data state not change, do nothing."

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 752
    return-void

    .line 754
    :cond_7
    if-eq v3, v7, :cond_8

    .line 755
    const/4 v5, 0x5

    if-ne v3, v5, :cond_a

    .line 758
    :cond_8
    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setServiceType(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    .line 759
    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFirstRoundSearch:Z

    .line 774
    :cond_9
    :goto_1
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreVoiceState:I

    .line 775
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreDataState:I

    goto/16 :goto_0

    .line 756
    :cond_a
    if-eq v2, v7, :cond_8

    .line 757
    const/4 v5, 0x5

    if-eq v2, v5, :cond_8

    .line 760
    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreVoiceState:I

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->isPreStateBeforeNoService(I)Z

    move-result v5

    if-nez v5, :cond_b

    .line 761
    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreDataState:I

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->isPreStateBeforeNoService(I)Z

    move-result v5

    .line 760
    if-eqz v5, :cond_c

    .line 762
    :cond_b
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->isNoServiceState(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 763
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->isNoServiceState(I)Z

    move-result v5

    .line 760
    if-eqz v5, :cond_c

    .line 764
    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setServiceType(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    .line 765
    iput-boolean v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFirstRoundSearch:Z

    goto :goto_1

    .line 766
    :cond_c
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFirstRoundSearch:Z

    if-nez v5, :cond_d

    .line 767
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mServiceType:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    sget-object v6, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-ne v5, v6, :cond_9

    .line 768
    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->hasMessages(I)Z

    move-result v5

    .line 766
    if-eqz v5, :cond_9

    .line 769
    :cond_d
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get4(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;

    move-result-object v5

    iget-boolean v5, v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;->mIsLwgRadioOn:Z

    if-eqz v5, :cond_9

    .line 770
    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SEARCHING:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setServiceType(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    goto :goto_1

    .line 778
    .end local v2    # "regDataState":I
    .end local v3    # "regState":I
    .end local v4    # "serviceState":Landroid/telephony/ServiceState;
    :sswitch_2
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get6()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->postponeNoServiceMessageIfNeeded(I)V

    .line 779
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    .line 780
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_3

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 781
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    aget v5, v5, v9

    iput v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mModemResumeSessionId:I

    .line 782
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreviewPlmnHandled:Z

    if-nez v5, :cond_3

    .line 783
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->selectedPlmn()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onPlmnChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 788
    :sswitch_3
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get6()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->postponeNoServiceMessageIfNeeded(I)V

    .line 789
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_f

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_f

    .line 790
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPlmns:[Ljava/lang/String;

    .line 791
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPlmns:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_e

    .line 792
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EVENT_GSM_PLMN_CHANGED: i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mPlmns="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 793
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPlmns:[Ljava/lang/String;

    aget-object v6, v6, v1

    .line 792
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 791
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 795
    :cond_e
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v5, :cond_f

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreviewPlmnHandled:Z

    if-eqz v5, :cond_10

    .line 799
    .end local v1    # "i":I
    :cond_f
    :goto_3
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    goto/16 :goto_0

    .line 796
    .restart local v1    # "i":I
    :cond_10
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->selectedPlmn()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onPreviewPlmn(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreviewPlmnHandled:Z

    goto :goto_3

    .line 802
    .end local v1    # "i":I
    :sswitch_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->unregisterSpecialCasesListener()V

    .line 803
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_12

    .line 804
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->unregisterSuspendListener()V

    .line 805
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    .line 809
    :goto_4
    iput v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreVoiceState:I

    .line 810
    iput v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreDataState:I

    .line 811
    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFirstRoundSearch:Z

    .line 812
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v5, :cond_11

    .line 813
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v5, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onRadioStateChanged(Z)V

    .line 815
    :cond_11
    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setServiceType(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    .line 816
    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 817
    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->removeMessages(I)V

    .line 818
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v5, :cond_3

    .line 819
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    sget-object v6, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-interface {v5, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onServiceStateChanged(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    goto/16 :goto_0

    .line 807
    :cond_12
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    goto :goto_4

    .line 726
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x67 -> :sswitch_4
        0x68 -> :sswitch_3
        0x69 -> :sswitch_2
        0x137 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->unregisterBaseListener()V

    .line 679
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->unregisterSuspendListener()V

    .line 680
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->unregisterSpecialCasesListener()V

    .line 677
    return-void
.end method

.method public findAvailabeNetwork()V
    .locals 2

    .prologue
    .line 696
    const-string/jumbo v0, " findAvailabeNetwork"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFindingAvailableNW:Z

    .line 698
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v1, 0x8c

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getAvailableNetworks(Landroid/os/Message;)V

    .line 695
    return-void
.end method

.method protected logdForController(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " LteController, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap4(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 1010
    return-void
.end method

.method protected msgToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "msgWhat"    # I

    .prologue
    .line 883
    const-string/jumbo v0, "[LteController]-"

    .line 884
    .local v0, "msg":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 915
    :goto_0
    return-object v0

    .line 886
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

    .line 889
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

    .line 892
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "EVENT_GSM_PLMN_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 895
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "EVENT_GSM_SUSPENDED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 898
    :sswitch_4
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

    .line 901
    :sswitch_5
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

    .line 904
    :sswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "EVENT_RADIO_NO_SERVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 907
    :sswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "EVENT_GSM_GET_AVAILABLE_NETWORKS_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 910
    :sswitch_8
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

    .line 884
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_5
        0x68 -> :sswitch_2
        0x69 -> :sswitch_3
        0x8c -> :sswitch_7
        0x136 -> :sswitch_6
        0x137 -> :sswitch_4
        0x138 -> :sswitch_8
    .end sparse-switch
.end method

.method protected processInitState(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 831
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 842
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->processInitState(Landroid/os/Message;)V

    .line 830
    :goto_0
    return-void

    .line 833
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->removeNoServiceMessage()V

    .line 834
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->enableSuspend(Z)V

    .line 836
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->resetToInitialState()V

    .line 838
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->registerSuspendListener()V

    .line 839
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    goto :goto_0

    .line 831
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method protected processSelectingNWState(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 849
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 850
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 876
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->processSelectingNWState(Landroid/os/Message;)V

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 852
    :pswitch_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFindingAvailableNW:Z

    .line 853
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    .line 854
    const-string/jumbo v4, " no exception while getting networks"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 855
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 856
    .local v2, "networkInfoArray":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    if-eqz v2, :cond_2

    .line 857
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 858
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/OperatorInfo;

    .line 859
    .local v3, "oi":Lcom/android/internal/telephony/OperatorInfo;
    if-eqz v3, :cond_1

    .line 860
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "available networks: i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", plmn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 861
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 860
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 857
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 865
    .end local v1    # "i":I
    .end local v3    # "oi":Lcom/android/internal/telephony/OperatorInfo;
    :cond_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v4, :cond_0

    .line 866
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v4, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onNetworkInfoReady(Ljava/util/List;)V

    goto :goto_0

    .line 869
    .end local v2    # "networkInfoArray":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    :cond_3
    const-string/jumbo v4, " exception happen while getting networks"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 870
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v4, :cond_0

    .line 871
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onNetworkInfoReady(Ljava/util/List;)V

    goto :goto_0

    .line 850
    nop

    :pswitch_data_0
    .packed-switch 0x8c
        :pswitch_0
    .end packed-switch
.end method

.method public registerNetworkManually(Lcom/android/internal/telephony/OperatorInfo;)V
    .locals 2
    .param p1, "oi"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    .line 713
    const-string/jumbo v0, " registerNetworkManually"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/PhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 712
    return-void
.end method

.method public resumeNetwork()V
    .locals 4

    .prologue
    .line 919
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    .line 920
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

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 921
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mModemResumeSessionId:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    .line 918
    return-void
.end method

.method public setIfEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 986
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->enableSuspend(Z)V

    .line 985
    return-void
.end method

.method public setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 2
    .param p1, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " setRoamingMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    const/16 v1, 0x138

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap2(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z

    .line 691
    :goto_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    .line 684
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap2(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z

    goto :goto_0
.end method
