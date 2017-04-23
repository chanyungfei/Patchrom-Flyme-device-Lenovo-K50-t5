.class Lcom/android/server/wifi/WifiController$EcmState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EcmState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 963
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 967
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiController$EcmState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 965
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 973
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiController$EcmState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x26001

    if-ne v0, v1, :cond_4

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_4

    .line 975
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 976
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get5(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    .line 986
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap2(Lcom/android/server/wifi/WifiController;)V

    goto :goto_0

    .line 981
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 982
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get15(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 984
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get3(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 988
    :cond_4
    return v3
.end method
