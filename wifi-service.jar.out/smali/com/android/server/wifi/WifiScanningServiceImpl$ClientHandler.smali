.class Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;
.super Landroid/os/Handler;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    .line 129
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 128
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v9, -0x2

    .line 137
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 167
    :pswitch_0
    const-string/jumbo v7, "wifi.gscan.dbg"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 169
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 170
    .local v2, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    if-nez v2, :cond_3

    .line 171
    const-string/jumbo v6, "WifiScanningService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not find client info for message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    const-string/jumbo v7, "Could not find listener"

    invoke-virtual {v6, p1, v9, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .line 173
    return-void

    .line 140
    .end local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :pswitch_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_0

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Client connection failure, error="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap5(Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void

    .line 145
    :pswitch_2
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 146
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get2(Lcom/android/server/wifi/WifiScanningServiceImpl;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v6, p0, v7}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 148
    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget v7, p1, Landroid/os/Message;->sendingUid:I

    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v1, v6, v7, v0, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;ILcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V

    .line 149
    .local v1, "cInfo":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void

    .line 152
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    .end local v1    # "cInfo":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :pswitch_3
    iget v6, p1, Landroid/os/Message;->arg1:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 153
    const-string/jumbo v6, "Send failed, client connection lost"

    invoke-static {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap5(Ljava/lang/String;)V

    .line 158
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 159
    .restart local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    if-eqz v2, :cond_2

    .line 161
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->cleanup()V

    .line 163
    :cond_2
    return-void

    .line 178
    .end local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_3
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget v8, p1, Landroid/os/Message;->sendingUid:I

    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap3(Lcom/android/server/wifi/WifiScanningServiceImpl;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    iget v7, p1, Landroid/os/Message;->what:I

    const v8, 0x27004

    if-ne v7, v8, :cond_4

    .line 186
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get5(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    move-result-object v6

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 187
    return-void

    .line 179
    :catch_0
    move-exception v4

    .line 180
    .local v4, "e":Ljava/lang/SecurityException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to authorize app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    .line 181
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    const-string/jumbo v7, "Not authorized"

    const/4 v8, -0x4

    invoke-virtual {v6, p1, v8, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .line 182
    return-void

    .line 189
    .end local v4    # "e":Ljava/lang/SecurityException;
    :cond_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 190
    .restart local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    if-nez v2, :cond_5

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not find client info for message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap5(Ljava/lang/String;)V

    .line 192
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    const-string/jumbo v7, "Could not find listener"

    invoke-virtual {v6, p1, v9, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .line 193
    return-void

    .line 196
    :cond_5
    const/16 v7, 0xa

    new-array v5, v7, [I

    .local v5, "validCommands":[I
    fill-array-data v5, :array_0

    .line 208
    array-length v7, v5

    :goto_0
    if-ge v6, v7, :cond_7

    aget v3, v5, v6

    .line 209
    .local v3, "cmd":I
    iget v8, p1, Landroid/os/Message;->what:I

    if-ne v3, v8, :cond_6

    .line 210
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get5(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    move-result-object v6

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 211
    return-void

    .line 208
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 215
    .end local v3    # "cmd":I
    :cond_7
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    const-string/jumbo v7, "Invalid request"

    const/4 v8, -0x3

    invoke-virtual {v6, p1, v8, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .line 133
    return-void

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 196
    :array_0
    .array-data 4
        0x27000
        0x27002
        0x27003
        0x27015
        0x27016
        0x27006
        0x27007
        0x2700d
        0x2700b
        0x2700c
    .end array-data
.end method
