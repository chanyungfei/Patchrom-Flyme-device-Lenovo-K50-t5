.class Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;
.super Landroid/os/Handler;
.source "MessageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/msglogger/MessageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageMonitorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/msglogger/MessageMonitorService;


# direct methods
.method public constructor <init>(Lcom/mediatek/msglogger/MessageMonitorService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/msglogger/MessageMonitorService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;->this$0:Lcom/mediatek/msglogger/MessageMonitorService;

    .line 111
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 110
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 117
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 121
    .local v4, "msgLoggerName":Ljava/lang/String;
    sget-object v6, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 123
    .local v2, "iter":Ljava/util/Iterator;
    :cond_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;

    .line 126
    .local v3, "key":Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    iget-object v6, v3, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    sget-object v6, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/msgmonitorservice/IMessageLoggerWrapper;

    invoke-interface {v6, v4}, Lcom/mediatek/msgmonitorservice/IMessageLoggerWrapper;->unregisterMsgLogger(Ljava/lang/String;)V

    .line 129
    sget-object v6, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v3    # "key":Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    :cond_1
    :goto_1
    const-string/jumbo v6, "MessageMonitorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UnregisterMsgLogger "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "MessageMonitorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UnregisterMsgLogger fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 133
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "MessageMonitorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UnregisterMsgLogger fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 142
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "iter":Ljava/util/Iterator;
    .end local v4    # "msgLoggerName":Ljava/lang/String;
    :pswitch_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 143
    .local v5, "pid":I
    sget-object v6, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 145
    .restart local v2    # "iter":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;

    .line 148
    .restart local v3    # "key":Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    iget v6, v3, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerPid:I

    if-ne v5, v6, :cond_2

    .line 150
    sget-object v6, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/msgmonitorservice/IMessageLoggerWrapper;

    invoke-interface {v6}, Lcom/mediatek/msgmonitorservice/IMessageLoggerWrapper;->dumpAllMessageHistory()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 159
    .end local v3    # "key":Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    :cond_3
    :goto_2
    const-string/jumbo v6, "MessageMonitorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DumpAllMessageHistory  pid= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 156
    :catch_2
    move-exception v1

    .line 157
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "MessageMonitorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DumpAllMessageHistory fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 154
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v0

    .line 155
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "MessageMonitorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UnregisterMsgLogger fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "iter":Ljava/util/Iterator;
    .end local v5    # "pid":I
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 164
    .restart local v4    # "msgLoggerName":Ljava/lang/String;
    sget-object v6, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 166
    .restart local v2    # "iter":Ljava/util/Iterator;
    :goto_3
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 168
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;

    .line 169
    .restart local v3    # "key":Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    iget-object v6, v3, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 171
    sget-object v6, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/msgmonitorservice/IMessageLoggerWrapper;

    invoke-interface {v6, v4}, Lcom/mediatek/msgmonitorservice/IMessageLoggerWrapper;->dumpMSGHistorybyName(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5

    .line 184
    .end local v3    # "key":Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    :cond_4
    :goto_4
    const-string/jumbo v6, "MessageMonitorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DumpMSGHistorybyName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 176
    .restart local v3    # "key":Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    :cond_5
    :try_start_3
    const-string/jumbo v6, "MessageMonitorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Doesn\'t have msgLogger "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_3

    .line 179
    .end local v3    # "key":Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    :catch_4
    move-exception v0

    .line 180
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "MessageMonitorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DumpMSGHistorybyName fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 181
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_5
    move-exception v1

    .line 182
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "MessageMonitorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DumpMSGHistorybyName fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 188
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v2    # "iter":Ljava/util/Iterator;
    .end local v4    # "msgLoggerName":Ljava/lang/String;
    :pswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    .restart local v5    # "pid":I
    goto/16 :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
