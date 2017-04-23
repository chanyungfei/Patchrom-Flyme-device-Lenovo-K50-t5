.class Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 6915
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 6918
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6920
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 6921
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 6923
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6924
    const v2, 0x10e0026

    .line 6923
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 6926
    .local v0, "defaultInterval":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6927
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6928
    const-string/jumbo v3, "wifi_supplicant_scan_interval_ms"

    .line 6929
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get108(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_3

    .end local v0    # "defaultInterval":I
    :goto_0
    int-to-long v4, v0

    .line 6927
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set68(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 6936
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get24(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap85(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6938
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get116(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setScanInterval(I)V

    .line 6939
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiNative;->setExternalSim(Z)Z

    .line 6942
    invoke-static {v6}, Lcom/android/server/wifi/WifiNative;->setDfsFlag(Z)Z

    .line 6945
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap68(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6947
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Z

    .line 6950
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6951
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/server/wifi/WifiNative;->enableAutoConnect(Z)V

    .line 6957
    :goto_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get142(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get142(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/common/wifi/IWifiFwkExt;->hasNetworkSelection()I

    move-result v1

    if-eqz v1, :cond_2

    .line 6959
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 6917
    :cond_2
    return-void

    .line 6929
    .restart local v0    # "defaultInterval":I
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 6930
    const v5, 0x10e0029

    .line 6929
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_0

    .line 6932
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6933
    const-string/jumbo v3, "wifi_supplicant_scan_interval_ms"

    .line 6934
    int-to-long v4, v0

    .line 6932
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set68(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_1

    .line 6953
    .end local v0    # "defaultInterval":I
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiNative;->enableAutoConnect(Z)V

    goto :goto_2
.end method

.method public exit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7145
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 7147
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get80()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7148
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set75(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7151
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 7144
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 18
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 6966
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13}, Lcom/android/server/wifi/WifiStateMachine;->-wrap47(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 6968
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    .line 7138
    const/4 v12, 0x0

    return v12

    .line 6970
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get90(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 6971
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get133(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7140
    :cond_0
    :goto_0
    const/4 v12, 0x1

    return v12

    .line 6973
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get120(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 6977
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v13, "Connection lost, restart supplicant"

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6978
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 6979
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6980
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get118(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v12

    const v13, 0x2006f

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 6981
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get90(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 6982
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get133(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6986
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v14, 0x1388

    const v13, 0x2000b

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 6984
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 6990
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiStateMachine;->maybeRegisterNetworkFactory()V

    .line 6991
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiStateMachine;->closeRadioScanStats()V

    .line 6992
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6993
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap71(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6994
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 6995
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-set65(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6996
    const-string/jumbo v12, "WifiStateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SCAN_RESULTS_EVENT, mScanForWeakSignal:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get104(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6997
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get104(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 6998
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap77(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7000
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, -0x1

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-set19(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7002
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mIsFullScanOngoing: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 7003
    const-string/jumbo v14, ", mSendScanResultsBroadcast: "

    .line 7002
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 7003
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v14

    .line 7002
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7005
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v12

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v12

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_6

    .line 7006
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mWifiOnScanCount: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7008
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const v13, 0x24005

    if-ne v12, v13, :cond_7

    const/4 v9, 0x1

    .line 7009
    .local v9, "scanSucceeded":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v12, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast(Z)V

    .line 7011
    .end local v9    # "scanSucceeded":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-set79(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7013
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-set64(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7014
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-set42(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7015
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7016
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Queue;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 7017
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    invoke-virtual {v13, v12}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 7008
    :cond_7
    const/4 v9, 0x0

    .restart local v9    # "scanSucceeded":Z
    goto :goto_2

    .line 7020
    .end local v9    # "scanSucceeded":Z
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiNative;->ping()Z

    move-result v7

    .line 7021
    .local v7, "ok":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    if-eqz v7, :cond_8

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v13, v0, v14, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_8
    const/4 v12, -0x1

    goto :goto_3

    .line 7024
    .end local v7    # "ok":Z
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiNative;->getFreqCapability()Ljava/lang/String;

    move-result-object v5

    .line 7025
    .local v5, "freqs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 7029
    .end local v5    # "freqs":Ljava/lang/String;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v13, "Failed to start soft AP with a running supplicant"

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7030
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v13, 0xe

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap75(Lcom/android/server/wifi/WifiStateMachine;II)V

    goto/16 :goto_0

    .line 7033
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-set53(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7034
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v12

    .line 7035
    const/4 v13, -0x1

    .line 7034
    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    goto/16 :goto_0

    .line 7039
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v12, :cond_0

    .line 7040
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-static {v13, v12}, Lcom/android/server/wifi/WifiStateMachine;->-set70(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 7044
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v11

    .line 7045
    .local v11, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-nez v11, :cond_9

    .line 7047
    new-instance v11, Landroid/net/wifi/WifiLinkLayerStats;

    .end local v11    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    invoke-direct {v11}, Landroid/net/wifi/WifiLinkLayerStats;-><init>()V

    .line 7049
    .restart local v11    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 7052
    .end local v11    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 7054
    .local v3, "country":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    const/4 v8, 0x1

    .line 7055
    .local v8, "persist":Z
    :goto_4
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 7057
    .local v10, "sequence":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get25(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    if-eq v10, v12, :cond_b

    .line 7058
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v13, "set country code ignored due to sequnce num"

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7054
    .end local v8    # "persist":Z
    .end local v10    # "sequence":I
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "persist":Z
    goto :goto_4

    .line 7061
    .restart local v10    # "sequence":I
    :cond_b
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "set country code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7062
    :cond_c
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 7064
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 7072
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get150(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x23010

    invoke-virtual {v12, v13, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 7065
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/android/server/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 7066
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set23(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    .line 7068
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failed to set country code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 7075
    .end local v3    # "country":Ljava/lang/String;
    .end local v8    # "persist":Z
    .end local v10    # "sequence":I
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap83(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 7078
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 7079
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 7080
    const-string/jumbo v15, "wifi_supplicant_scan_interval_ms"

    .line 7081
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get108(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 7082
    const v16, 0x10e0026

    .line 7081
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    :goto_6
    int-to-long v0, v12

    move-wide/from16 v16, v0

    .line 7078
    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->-set68(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7085
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get116(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v14

    long-to-int v13, v14

    div-int/lit16 v13, v13, 0x3e8

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiNative;->setScanInterval(I)V

    goto/16 :goto_0

    .line 7083
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 7084
    const v16, 0x10e0029

    .line 7083
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    goto :goto_6

    .line 7088
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiNative;->doCtiaTestOn()Z

    move-result v7

    .line 7089
    .restart local v7    # "ok":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    if-eqz v7, :cond_10

    const/4 v12, 0x1

    :goto_7
    move-object/from16 v0, p1

    invoke-static {v13, v0, v14, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_10
    const/4 v12, -0x1

    goto :goto_7

    .line 7092
    .end local v7    # "ok":Z
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiNative;->doCtiaTestOff()Z

    move-result v7

    .line 7093
    .restart local v7    # "ok":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    if-eqz v7, :cond_11

    const/4 v12, 0x1

    :goto_8
    move-object/from16 v0, p1

    invoke-static {v13, v0, v14, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_11
    const/4 v12, -0x1

    goto :goto_8

    .line 7096
    .end local v7    # "ok":Z
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiNative;->doCtiaTestRate(I)Z

    move-result v7

    .line 7097
    .restart local v7    # "ok":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    if-eqz v7, :cond_12

    const/4 v12, 0x1

    :goto_9
    move-object/from16 v0, p1

    invoke-static {v13, v0, v14, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_12
    const/4 v12, -0x1

    goto :goto_9

    .line 7100
    .end local v7    # "ok":Z
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap19(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    .line 7101
    .local v6, "networkId":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 7104
    .end local v6    # "networkId":I
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7105
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 7108
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-static {v13, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap85(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7112
    :sswitch_12
    const-string/jumbo v12, "WifiStateMachine"

    const-string/jumbo v13, "Receive whole chip reset fail, disable wifi!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get146(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 7114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get146(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 7119
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiNative;->bssFlush()V

    goto/16 :goto_0

    .line 7123
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 7127
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiConfigStore;->getNetworkAutoConnectable(I)Z

    move-result v2

    .line 7128
    .local v2, "autoConnectable":Z
    const-string/jumbo v12, "WifiStateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "M_CMD_GET_NETWORK_AUTO_CONNECTABLE, NetworkId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", AutoConnectable: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    if-eqz v2, :cond_13

    const/4 v12, 0x1

    :goto_a
    move-object/from16 v0, p1

    invoke-static {v13, v0, v14, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_13
    const/4 v12, 0x0

    goto :goto_a

    .line 7133
    .end local v2    # "autoConnectable":Z
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiNative;->getTestEnv(I)Ljava/lang/String;

    move-result-object v4

    .line 7134
    .local v4, "env":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6968
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000c -> :sswitch_0
        0x20015 -> :sswitch_5
        0x20033 -> :sswitch_3
        0x2003b -> :sswitch_14
        0x2003c -> :sswitch_4
        0x2003f -> :sswitch_8
        0x20048 -> :sswitch_6
        0x20050 -> :sswitch_9
        0x2008d -> :sswitch_7
        0x200aa -> :sswitch_a
        0x200ab -> :sswitch_b
        0x200ac -> :sswitch_11
        0x200ad -> :sswitch_c
        0x200ae -> :sswitch_d
        0x200af -> :sswitch_e
        0x200b0 -> :sswitch_f
        0x200b1 -> :sswitch_10
        0x200ca -> :sswitch_13
        0x200e8 -> :sswitch_16
        0x200fb -> :sswitch_15
        0x24002 -> :sswitch_1
        0x24005 -> :sswitch_2
        0x24011 -> :sswitch_2
        0x24052 -> :sswitch_12
    .end sparse-switch
.end method
