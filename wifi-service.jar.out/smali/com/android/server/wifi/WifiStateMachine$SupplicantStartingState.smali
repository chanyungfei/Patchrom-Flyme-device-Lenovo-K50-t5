.class Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 6714
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private initializeWpsDetails()V
    .locals 4

    .prologue
    .line 6721
    const-string/jumbo v1, "ro.product.name"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6722
    .local v0, "detail":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6723
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to set device name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6725
    :cond_0
    const-string/jumbo v1, "ro.product.manufacturer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6726
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setManufacturer(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6727
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to set manufacturer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6729
    :cond_1
    const-string/jumbo v1, "ro.product.model"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6730
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setModelName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6731
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to set model name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6733
    :cond_2
    const-string/jumbo v1, "ro.product.model"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6734
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setModelNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6735
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to set model number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6737
    :cond_3
    const-string/jumbo v1, "ro.serialno"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6738
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setSerialNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6739
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to set serial number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6741
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    const-string/jumbo v2, "physical_display virtual_push_button"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setConfigMethods(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6742
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v2, "Failed to set WPS config methods"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6744
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setDeviceType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 6745
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to set primary device type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6719
    :cond_6
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 6717
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6716
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 6751
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, p1, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap47(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 6753
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 6909
    const/4 v8, 0x0

    return v8

    .line 6755
    :sswitch_0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v9, "Supplicant connection established"

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6756
    :cond_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap76(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 6757
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set67(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6760
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get118(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v8

    const v9, 0x2006f

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 6762
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set44(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6763
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, -0x1

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6764
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, -0x1

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set50(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6766
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->getMacAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 6768
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap69(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6769
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->enableSaveConfig()V

    .line 6770
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiConfigStore;->loadAndEnableAllNetworks()V

    .line 6771
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-lez v8, :cond_1

    .line 6772
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->enableVerboseLogging(I)V

    .line 6774
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->initializeWpsDetails()V

    .line 6775
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6776
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, -0x1

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set48(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6777
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->-set52(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 6778
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set73(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6781
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get80()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 6782
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set74(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6783
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set75(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6784
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6785
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set28(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6786
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set31(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6787
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6788
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set81(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6792
    :cond_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 6793
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiNative;->setBssExpireAge(I)Z

    .line 6794
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiNative;->setBssExpireCount(I)Z

    .line 6795
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6796
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set62(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6797
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set65(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6798
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set37(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6799
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->-set45(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 6800
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get142(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v8

    invoke-interface {v8}, Lcom/mediatek/common/wifi/IWifiFwkExt;->shouldAutoConnect()Z

    move-result v8

    if-nez v8, :cond_3

    .line 6801
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 6806
    :cond_3
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 6808
    .local v5, "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v5, :cond_5

    .line 6810
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 6812
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_4

    .line 6813
    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    .line 6814
    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->autoConnectable:I

    if-nez v8, :cond_4

    .line 6816
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Handle SUP_CONNECTION_EVENT, Disable Network: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " because Auto Connectable is FALSE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6817
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    goto :goto_0

    .line 6824
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "config$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap6(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 6825
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 6826
    .local v6, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v6, :cond_9

    .line 6827
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "network$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 6828
    .local v3, "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v7

    .line 6829
    .local v7, "value":I
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "EAP value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6830
    const/4 v8, 0x4

    if-eq v7, v8, :cond_7

    .line 6831
    const/4 v8, 0x5

    if-ne v7, v8, :cond_8

    .line 6833
    :cond_7
    :goto_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    iget v9, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 6834
    const/4 v10, 0x0

    .line 6833
    invoke-virtual {v8, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 6838
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    iget v9, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 6840
    .local v2, "eapSimConfig":Landroid/net/wifi/WifiConfiguration;
    const/16 v8, 0xa3

    .line 6839
    invoke-virtual {v2, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_1

    .line 6832
    .end local v2    # "eapSimConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_8
    const/4 v8, 0x6

    if-ne v7, v8, :cond_6

    goto :goto_2

    .line 6845
    .end local v3    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "network$iterator":Ljava/util/Iterator;
    .end local v7    # "value":I
    :cond_9
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v9, "Check for EAP_SIM_AKA, networks is null!"

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6877
    .end local v6    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_a
    :goto_3
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap67(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 6878
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6911
    .end local v5    # "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_4
    const/4 v8, 0x1

    return v8

    .line 6848
    .restart local v5    # "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_b
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "LOADED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 6849
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v9, "mIccState is not loaded, check EAP SIM/AKA networks"

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6850
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 6851
    .restart local v6    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v6, :cond_f

    .line 6852
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "network$iterator":Ljava/util/Iterator;
    :cond_c
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 6853
    .restart local v3    # "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v7

    .line 6854
    .restart local v7    # "value":I
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "EAP value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6855
    const/4 v8, 0x4

    if-eq v7, v8, :cond_d

    .line 6856
    const/4 v8, 0x5

    if-ne v7, v8, :cond_e

    .line 6858
    :cond_d
    :goto_6
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "diable EAP SIM/AKA network let supplicant cannot auto connect, netId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 6859
    iget v10, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 6858
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6860
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    iget v9, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 6861
    const/4 v10, 0x0

    .line 6860
    invoke-virtual {v8, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 6865
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    iget v9, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 6867
    .restart local v2    # "eapSimConfig":Landroid/net/wifi/WifiConfiguration;
    const/16 v8, 0xa2

    .line 6866
    invoke-virtual {v2, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_5

    .line 6857
    .end local v2    # "eapSimConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_e
    const/4 v8, 0x6

    if-ne v7, v8, :cond_c

    goto :goto_6

    .line 6872
    .end local v3    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "network$iterator":Ljava/util/Iterator;
    .end local v7    # "value":I
    :cond_f
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v9, "Check for EAP_SIM_AKA, networks is null!"

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 6881
    .end local v5    # "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v6    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get115(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set67(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-result v8

    const/4 v9, 0x5

    if-gt v8, v9, :cond_10

    .line 6882
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v9, "Failed to setup control channel, restart supplicant"

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6883
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get147(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get90(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 6884
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6885
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v10, 0x1388

    const v9, 0x2000b

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_4

    .line 6887
    :cond_10
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->-get115(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 6888
    const-string/jumbo v10, " times to start supplicant, unload driver"

    .line 6887
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6889
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set67(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6890
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap76(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 6891
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_4

    .line 6905
    :sswitch_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6906
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_4

    .line 6753
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x2000c -> :sswitch_2
        0x2000d -> :sswitch_2
        0x2000e -> :sswitch_2
        0x20015 -> :sswitch_2
        0x20018 -> :sswitch_2
        0x20048 -> :sswitch_2
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_2
        0x20055 -> :sswitch_2
        0x2005a -> :sswitch_2
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_1
    .end sparse-switch
.end method
