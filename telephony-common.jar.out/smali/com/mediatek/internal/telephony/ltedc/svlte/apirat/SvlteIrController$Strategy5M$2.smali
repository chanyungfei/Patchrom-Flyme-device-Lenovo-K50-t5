.class Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;
.super Ljava/lang/Object;
.source "SvlteIrController.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    .prologue
    .line 1862
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkInfoReady(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1916
    .local p1, "networkInfoArray":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    const-string/jumbo v1, "[LTE]onNetworkInfoReady"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;Ljava/lang/String;)V

    .line 1917
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->tryNetworkManually(Ljava/util/List;)V

    .line 1915
    return-void
.end method

.method public onPlmnChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1889
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[LTE]onPlmnChanged :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;Ljava/lang/String;)V

    .line 1890
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    .line 1892
    .local v0, "oldMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->onLwgPlmnChanged(Ljava/lang/String;)V

    .line 1894
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1895
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->restartNoSerivceWatchdogIfNeeded()V

    .line 1888
    :goto_0
    return-void

    .line 1897
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->postponeNoServiceWatchdogIfNeeded()V

    goto :goto_0
.end method

.method public onPreSelectPlmn([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "plmnList"    # [Ljava/lang/String;

    .prologue
    .line 1877
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1880
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->getRoamingModeByPlmnCdma(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1881
    aget-object v1, p1, v0

    return-object v1

    .line 1877
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1884
    :cond_1
    const/4 v1, 0x0

    aget-object v1, p1, v1

    return-object v1
.end method

.method public onPreviewPlmn(Ljava/lang/String;)Z
    .locals 5
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1903
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[LTE]onPreviewPlmn :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;Ljava/lang/String;)V

    .line 1904
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    .line 1906
    .local v0, "oldMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->onPreviewLwgPlmn(Ljava/lang/String;)Z

    move-result v1

    .line 1908
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1909
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->restartNoSerivceWatchdogIfNeeded()V

    .line 1911
    :cond_0
    return v1
.end method

.method public onRadioStateChanged(Z)V
    .locals 3
    .param p1, "isRadioOn"    # Z

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIsLwgRadioOn:Z

    if-eq v0, p1, :cond_0

    .line 1866
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[LTE]onRadioStateChanged :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;Ljava/lang/String;)V

    .line 1867
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    iput-boolean p1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIsLwgRadioOn:Z

    .line 1868
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->onRadioStateChanged()V

    .line 1869
    if-nez p1, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->-wrap2(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)V

    .line 1864
    :cond_0
    return-void
.end method

.method public onRoamingModeSwitchDone()V
    .locals 1

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->startNewSearchRound()V

    .line 1943
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->startNewSearchRound()V

    .line 1941
    return-void
.end method

.method public onServiceStateChanged(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V
    .locals 4
    .param p1, "serviceType"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    .prologue
    .line 1922
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[LTE]onServiceStateChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;Ljava/lang/String;)V

    .line 1923
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-eq p1, v1, :cond_2

    .line 1924
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    iput-object p1, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    .line 1925
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-ne p1, v1, :cond_0

    .line 1926
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-ne v1, v2, :cond_0

    .line 1927
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->switchForNoService(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1928
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1929
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1930
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1933
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-ne p1, v1, :cond_1

    .line 1934
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->-wrap2(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)V

    .line 1936
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->updateWatchdog()V

    .line 1921
    :cond_2
    return-void
.end method
