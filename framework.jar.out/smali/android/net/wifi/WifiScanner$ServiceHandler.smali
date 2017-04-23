.class Landroid/net/wifi/WifiScanner$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 949
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 948
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 953
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 976
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Landroid/net/wifi/WifiScanner;->-wrap0(I)Ljava/lang/Object;

    move-result-object v0

    .line 978
    .local v0, "listener":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 980
    return-void

    .line 955
    .end local v0    # "listener":Ljava/lang/Object;
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_0

    .line 956
    invoke-static {}, Landroid/net/wifi/WifiScanner;->-get0()Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x11001

    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 963
    :goto_0
    invoke-static {}, Landroid/net/wifi/WifiScanner;->-get1()Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 964
    return-void

    .line 958
    :cond_0
    const-string/jumbo v3, "WifiScanner"

    const-string/jumbo v4, "Failed to set up channel connection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-static {v5}, Landroid/net/wifi/WifiScanner;->-set0(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_0

    .line 966
    :pswitch_2
    return-void

    .line 968
    :pswitch_3
    const-string/jumbo v3, "WifiScanner"

    const-string/jumbo v4, "Channel connection lost"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-static {v5}, Landroid/net/wifi/WifiScanner;->-set0(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 972
    invoke-virtual {p0}, Landroid/net/wifi/WifiScanner$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 973
    return-void

    .line 985
    .restart local v0    # "listener":Ljava/lang/Object;
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_1

    .line 1029
    :pswitch_4
    return-void

    .line 988
    :pswitch_5
    check-cast v0, Landroid/net/wifi/WifiScanner$ActionListener;

    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0}, Landroid/net/wifi/WifiScanner$ActionListener;->onSuccess()V

    .line 952
    :goto_1
    return-void

    .line 991
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiScanner$OperationResult;

    .line 992
    .local v2, "result":Landroid/net/wifi/WifiScanner$OperationResult;
    check-cast v0, Landroid/net/wifi/WifiScanner$ActionListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget v3, v2, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    iget-object v4, v2, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/net/wifi/WifiScanner$ActionListener;->onFailure(ILjava/lang/String;)V

    .line 993
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Landroid/net/wifi/WifiScanner;->-wrap1(I)Ljava/lang/Object;

    goto :goto_1

    .line 997
    .end local v2    # "result":Landroid/net/wifi/WifiScanner$OperationResult;
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_7
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    .line 998
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanData;->getResults()[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v3

    .line 997
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$ScanListener;->onResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 999
    return-void

    .line 1001
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 1002
    .local v1, "result":Landroid/net/wifi/ScanResult;
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0, v1}, Landroid/net/wifi/WifiScanner$ScanListener;->onFullResult(Landroid/net/wifi/ScanResult;)V

    .line 1003
    return-void

    .line 1005
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_9
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$ScanListener;->onPeriodChanged(I)V

    .line 1006
    return-void

    .line 1008
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_a
    check-cast v0, Landroid/net/wifi/WifiScanner$BssidListener;

    .line 1009
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 1008
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$BssidListener;->onFound([Landroid/net/wifi/ScanResult;)V

    .line 1010
    return-void

    .line 1012
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_b
    check-cast v0, Landroid/net/wifi/WifiScanner$BssidListener;

    .line 1013
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 1012
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$BssidListener;->onLost([Landroid/net/wifi/ScanResult;)V

    .line 1014
    return-void

    .line 1016
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_c
    check-cast v0, Landroid/net/wifi/WifiScanner$WifiChangeListener;

    .line 1017
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 1016
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$WifiChangeListener;->onChanging([Landroid/net/wifi/ScanResult;)V

    .line 1018
    return-void

    .line 1020
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_d
    check-cast v0, Landroid/net/wifi/WifiScanner$WifiChangeListener;

    .line 1021
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 1020
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$WifiChangeListener;->onQuiescence([Landroid/net/wifi/ScanResult;)V

    .line 1022
    return-void

    .line 1025
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_e
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Landroid/net/wifi/WifiScanner;->-wrap1(I)Ljava/lang/Object;

    goto :goto_1

    .line 953
    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 985
    :pswitch_data_1
    .packed-switch 0x27005
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_c
        :pswitch_d
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_e
    .end packed-switch
.end method
