.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 859
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$StateReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 862
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "StateReceiver onReceive action:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    if-nez v0, :cond_0

    return-void

    .line 865
    :cond_0
    const-string/jumbo v8, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 866
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 868
    :try_start_0
    const-string/jumbo v8, "configured"

    const/4 v10, 0x0

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 869
    .local v5, "usbConfigured":Z
    const-string/jumbo v8, "connected"

    const/4 v10, 0x0

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 872
    .local v6, "usbConnected":Z
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Z

    move-result v4

    .line 877
    .local v4, "oriRndisEnabled":Z
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-string/jumbo v8, "rndis"

    const/4 v11, 0x0

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_4

    .line 878
    const-string/jumbo v8, "eem"

    const/4 v11, 0x0

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 877
    :goto_0
    invoke-static {v10, v8}, Lcom/android/server/connectivity/Tethering;->-set1(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 882
    const-string/jumbo v8, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "StateReceiver onReceive action synchronized: usbConnected = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 884
    const-string/jumbo v11, " usbConfigured = "

    .line 882
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 885
    const-string/jumbo v11, ", mRndisEnabled = "

    .line 882
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 885
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    .line 882
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 886
    const-string/jumbo v11, ", mUsbTetherRequested = "

    .line 882
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 886
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->-get14(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    .line 882
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const-string/jumbo v8, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "StateReceiver onReceive action synchronized: mUsbTetherEnabled = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->-get13(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->-get13(Lcom/android/server/connectivity/Tethering;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 892
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Z

    move-result v8

    if-eq v8, v4, :cond_1

    .line 897
    const-string/jumbo v8, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "StateReceiver onReceive action synchronized: mUsbTetherEnabled = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 898
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->-get13(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    .line 897
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 899
    const-string/jumbo v11, ", mRndisEnabled = "

    .line 897
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 899
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Z

    move-result v11

    .line 897
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 900
    const-string/jumbo v11, ", oriRndisEnabled = "

    .line 897
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/android/server/connectivity/Tethering;->-wrap11(Lcom/android/server/connectivity/Tethering;Z)V

    .line 902
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->-get0(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v10, "usb"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbManager;

    .line 903
    .local v7, "usbManager":Landroid/hardware/usb/UsbManager;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 905
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/android/server/connectivity/Tethering;->-set5(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 910
    .end local v7    # "usbManager":Landroid/hardware/usb/UsbManager;
    :cond_1
    if-eqz v6, :cond_2

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->-get14(Lcom/android/server/connectivity/Tethering;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v5, :cond_2

    .line 911
    const-string/jumbo v8, "Tethering"

    const-string/jumbo v10, "StateReceiver onReceive action synchronized: usbConnected && mRndisEnabled && mUsbTetherRequested, tetherUsb!! "

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v10, 0x1

    invoke-static {v8, v10}, Lcom/android/server/connectivity/Tethering;->-wrap11(Lcom/android/server/connectivity/Tethering;Z)V

    .line 914
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/android/server/connectivity/Tethering;->-set5(Lcom/android/server/connectivity/Tethering;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v9

    .line 861
    .end local v4    # "oriRndisEnabled":Z
    .end local v5    # "usbConfigured":Z
    .end local v6    # "usbConnected":Z
    :cond_3
    :goto_1
    return-void

    .line 877
    .restart local v4    # "oriRndisEnabled":Z
    .restart local v5    # "usbConfigured":Z
    .restart local v6    # "usbConnected":Z
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 866
    .end local v4    # "oriRndisEnabled":Z
    .end local v5    # "usbConfigured":Z
    .end local v6    # "usbConnected":Z
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 919
    :cond_5
    const-string/jumbo v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 921
    const-string/jumbo v8, "networkInfo"

    .line 920
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 922
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    const-string/jumbo v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Tethering got CONNECTIVITY_ACTION, networkInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    if-eqz v3, :cond_6

    .line 924
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v8, v9, :cond_6

    .line 925
    const-string/jumbo v8, "Tethering"

    const-string/jumbo v9, "Tethering got CONNECTIVITY_ACTION"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->-get11(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 928
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 929
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 931
    :cond_6
    const-string/jumbo v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 932
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v8}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    goto :goto_1

    .line 937
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_7
    const-string/jumbo v8, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 938
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->-wrap12(Lcom/android/server/connectivity/Tethering;)V

    goto :goto_1

    .line 939
    :cond_8
    const-string/jumbo v8, "android.intent.action.ACTION_ENABLE_NSIOT_TESTING"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 941
    const-string/jumbo v8, "nsiot_enabled"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 942
    .local v1, "enabled":Z
    const-string/jumbo v8, "nsiot_ip_addr"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 943
    .local v2, "ipAddr":Ljava/lang/String;
    const-string/jumbo v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[NS-IOT]Receieve ACTION_ENABLE_NSIOT_TESTING:nsiot_enabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 945
    const-string/jumbo v10, ","

    .line 943
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 945
    const-string/jumbo v10, "nsiot_ip_addr"

    .line 943
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 945
    const-string/jumbo v10, " = "

    .line 943
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const-string/jumbo v8, "net.nsiot_pending"

    const-string/jumbo v9, "true"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v8, v1, v2}, Lcom/android/server/connectivity/Tethering;->-wrap2(Lcom/android/server/connectivity/Tethering;ZLjava/lang/String;)Z

    goto/16 :goto_1
.end method
