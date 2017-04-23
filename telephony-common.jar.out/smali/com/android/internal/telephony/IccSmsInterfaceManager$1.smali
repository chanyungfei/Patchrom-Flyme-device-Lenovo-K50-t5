.class Lcom/android/internal/telephony/IccSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 168
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 170
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 171
    .local v1, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v13, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 172
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_1

    const/4 v12, 0x1

    :goto_1
    iput-boolean v12, v14, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 174
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-boolean v12, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v12, :cond_2

    .line 176
    :try_start_1
    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [I

    const/4 v14, 0x0

    aget v6, v12, v14

    .line 177
    .local v6, "index":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get6(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v12, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 178
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[insertRaw save one pdu in index "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    .end local v6    # "index":I
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v13

    .line 193
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_0

    .line 194
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    .line 195
    .local v3, "e":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Cannot update SMS "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/CommandException$Error;->SIM_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v12, v13, :cond_0

    .line 198
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v12}, Lcom/android/internal/telephony/SMSDispatcher;->handleIccFull()V

    goto/16 :goto_0

    .line 172
    .end local v3    # "e":Lcom/android/internal/telephony/CommandException;
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 181
    :catch_0
    move-exception v5

    .line 182
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 171
    .end local v5    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 179
    :catch_1
    move-exception v4

    .line 180
    .local v4, "e":Ljava/lang/ClassCastException;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_2

    .line 185
    .end local v4    # "e":Ljava/lang/ClassCastException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v14, "[insertRaw fail to insert raw into ICC"

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get6(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v12, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "-1,"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 204
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 206
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v13, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLoadLock:Ljava/lang/Object;

    monitor-enter v13

    .line 208
    :try_start_5
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_4

    .line 209
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v14, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set3(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V

    .line 220
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLoadLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    monitor-exit v13

    goto/16 :goto_0

    .line 213
    :cond_4
    :try_start_6
    const-string/jumbo v12, "SMS"

    const/4 v14, 0x3

    invoke-static {v12, v14}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 214
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v14, "Cannot load Sms records"

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 216
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get3(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get3(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 206
    :catchall_1
    move-exception v12

    monitor-exit v13

    throw v12

    .line 229
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 230
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v13, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 231
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_6

    const/4 v12, 0x1

    :goto_5
    iput-boolean v12, v14, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 232
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    .line 230
    :catchall_2
    move-exception v12

    monitor-exit v13

    throw v12

    .line 231
    :cond_6
    const/4 v12, 0x0

    goto :goto_5

    .line 237
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 239
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v13, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 240
    :try_start_8
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_8

    .line 241
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v14, 0x1

    iput-boolean v14, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 243
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get2(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Lcom/mediatek/internal/telephony/IccSmsStorageStatus;

    move-result-object v12

    if-nez v12, :cond_7

    .line 244
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v14, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;

    invoke-direct {v14}, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;-><init>()V

    invoke-static {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set2(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/mediatek/internal/telephony/IccSmsStorageStatus;)Lcom/mediatek/internal/telephony/IccSmsStorageStatus;

    .line 247
    :cond_7
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;

    .line 249
    .local v11, "tmpStatus":Lcom/mediatek/internal/telephony/IccSmsStorageStatus;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get2(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Lcom/mediatek/internal/telephony/IccSmsStorageStatus;

    move-result-object v12

    iget v14, v11, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mUsed:I

    iput v14, v12, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mUsed:I

    .line 250
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get2(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Lcom/mediatek/internal/telephony/IccSmsStorageStatus;

    move-result-object v12

    iget v14, v11, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mTotal:I

    iput v14, v12, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mTotal:I

    .line 255
    .end local v11    # "tmpStatus":Lcom/mediatek/internal/telephony/IccSmsStorageStatus;
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_4

    .line 239
    :catchall_3
    move-exception v12

    monitor-exit v13

    throw v12

    .line 253
    :cond_8
    :try_start_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v14, "Cannot Get Sms SIM Memory Status from SIM"

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    .line 259
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 260
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get1(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 261
    :try_start_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_9

    const/4 v12, 0x1

    :goto_7
    invoke-static {v14, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set1(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get0(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-result v12

    if-eqz v12, :cond_a

    .line 264
    :try_start_b
    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [I

    const/4 v14, 0x0

    aget v6, v12, v14

    .line 265
    .restart local v6    # "index":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get5(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v12, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 266
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "insertText save one pdu in index "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 277
    .end local v6    # "index":I
    :goto_8
    :try_start_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get1(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto/16 :goto_4

    .line 260
    :catchall_4
    move-exception v12

    monitor-exit v13

    throw v12

    .line 261
    :cond_9
    const/4 v12, 0x0

    goto :goto_7

    .line 269
    :catch_2
    move-exception v5

    .line 270
    .restart local v5    # "ex":Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 267
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 268
    .restart local v4    # "e":Ljava/lang/ClassCastException;
    invoke-virtual {v4}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_8

    .line 273
    .end local v4    # "e":Ljava/lang/ClassCastException;
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v14, "insertText fail to insert sms into ICC"

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get5(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v12, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "-1,"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_8

    .line 281
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 282
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v13, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 283
    :try_start_e
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-nez v12, :cond_b

    .line 285
    :try_start_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Landroid/telephony/SmsParameters;

    invoke-static {v14, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set5(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/telephony/SmsParameters;)Landroid/telephony/SmsParameters;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 298
    :goto_9
    :try_start_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto/16 :goto_4

    .line 282
    :catchall_5
    move-exception v12

    monitor-exit v13

    throw v12

    .line 289
    :catch_4
    move-exception v5

    .line 290
    .restart local v5    # "ex":Ljava/lang/Exception;
    :try_start_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v14, "[EFsmsp fail to get sms params Exception"

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 286
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_5
    move-exception v4

    .line 287
    .restart local v4    # "e":Ljava/lang/ClassCastException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v14, "[EFsmsp fail to get sms params ClassCastException"

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v4}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_9

    .line 294
    .end local v4    # "e":Ljava/lang/ClassCastException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v14, "[EFsmsp fail to get sms params"

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v14, 0x0

    invoke-static {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set5(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/telephony/SmsParameters;)Landroid/telephony/SmsParameters;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_9

    .line 302
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 303
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v13, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 304
    :try_start_12
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_c

    .line 305
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v14, 0x1

    invoke-static {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set6(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 311
    :goto_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto/16 :goto_4

    .line 303
    :catchall_6
    move-exception v12

    monitor-exit v13

    throw v12

    .line 307
    :cond_c
    :try_start_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v14, "[EFsmsp fail to set sms params"

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v14, 0x0

    invoke-static {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set6(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_a

    .line 315
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 316
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v13, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 317
    :try_start_14
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    if-nez v12, :cond_e

    .line 320
    :try_start_15
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    .line 321
    .local v9, "rawData":[B
    const/4 v12, 0x0

    aget-byte v12, v9, v12

    if-nez v12, :cond_d

    .line 322
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v14, "sms raw data status is FREE"

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v14, 0x0

    invoke-static {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set7(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 336
    .end local v9    # "rawData":[B
    :goto_b
    :try_start_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    goto/16 :goto_4

    .line 316
    :catchall_7
    move-exception v12

    monitor-exit v13

    throw v12

    .line 325
    .restart local v9    # "rawData":[B
    :cond_d
    :try_start_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v14, Lcom/android/internal/telephony/SmsRawData;

    invoke-direct {v14, v9}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    invoke-static {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set7(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    goto :goto_b

    .line 327
    .end local v9    # "rawData":[B
    :catch_6
    move-exception v4

    .line 328
    .restart local v4    # "e":Ljava/lang/ClassCastException;
    :try_start_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v14, "fail to get sms raw data ClassCastException"

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v4}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 330
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v14, 0x0

    invoke-static {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set7(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;

    goto :goto_b

    .line 333
    .end local v4    # "e":Ljava/lang/ClassCastException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v14, "fail to get sms raw data rild"

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v14, 0x0

    invoke-static {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set7(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_b

    .line 340
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 341
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v13, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 342
    :try_start_19
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_f

    .line 344
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    .line 346
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_10

    .line 347
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v14, 0x0

    iput-boolean v14, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 365
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :cond_f
    :goto_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "queryCbActivation: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-boolean v15, v15, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    goto/16 :goto_4

    .line 341
    :catchall_8
    move-exception v12

    monitor-exit v13

    throw v12

    .line 349
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :cond_10
    const/4 v12, 0x0

    :try_start_1a
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 350
    .local v2, "cbConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "cbConfig: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v12

    const/4 v14, -0x1

    if-ne v12, v14, :cond_11

    .line 353
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v12

    const/4 v14, -0x1

    if-ne v12, v14, :cond_11

    .line 354
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v12

    const/4 v14, -0x1

    if-ne v12, v14, :cond_11

    .line 355
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v12

    const/4 v14, -0x1

    if-ne v12, v14, :cond_11

    .line 356
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v12

    if-nez v12, :cond_11

    .line 358
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v14, 0x0

    iput-boolean v14, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    goto :goto_c

    .line 360
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v14, 0x1

    iput-boolean v14, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    goto/16 :goto_c

    .line 370
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "cbConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 371
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v13, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 372
    :try_start_1b
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_12

    .line 374
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    .line 376
    .local v8, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eqz v12, :cond_13

    .line 377
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-static {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set4(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 378
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get4(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 380
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get4(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v12

    if-eqz v12, :cond_13

    .line 381
    const/4 v6, 0x0

    .line 382
    .restart local v6    # "index":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "config size="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v15}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get4(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v15

    array-length v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 384
    const/4 v6, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get4(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v12

    array-length v12, v12

    if-ge v6, v12, :cond_13

    .line 385
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mSmsCBConfig["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "] = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 386
    const-string/jumbo v15, "Channel id: "

    .line 385
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 387
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v15}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get4(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v15

    aget-object v15, v15, v6

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v15

    .line 385
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 387
    const-string/jumbo v15, "-"

    .line 385
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 388
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v15}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get4(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v15

    aget-object v15, v15, v6

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v15

    .line 385
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 388
    const-string/jumbo v15, ", "

    .line 385
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 389
    const-string/jumbo v15, "Language: "

    .line 385
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 390
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v15}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get4(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v15

    aget-object v15, v15, v6

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v15

    .line 385
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 390
    const-string/jumbo v15, "-"

    .line 385
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 391
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v15}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get4(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v15

    aget-object v15, v15, v6

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v15

    .line 385
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 391
    const-string/jumbo v15, ", "

    .line 385
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 392
    const-string/jumbo v15, "Selected: "

    .line 385
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 392
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v15}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get4(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v15

    aget-object v15, v15, v6

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v15

    .line 385
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 384
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_d

    .line 397
    .end local v6    # "index":I
    .end local v8    # "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v14, "Cannot Get CB configs"

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 399
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    goto/16 :goto_4

    .line 371
    :catchall_9
    move-exception v12

    monitor-exit v13

    throw v12

    .line 403
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 404
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v13, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 405
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_14

    const/4 v12, 0x1

    :goto_e
    iput-boolean v12, v14, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 406
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    goto/16 :goto_4

    .line 404
    :catchall_a
    move-exception v12

    monitor-exit v13

    throw v12

    .line 405
    :cond_14
    const/4 v12, 0x0

    goto :goto_e

    .line 410
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v13, "EVENT_WRITE_CDMA_SMS_TO_RUIM_DONE"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 412
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v13, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 413
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    if-eqz v1, :cond_18

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_18

    const/4 v12, 0x1

    :goto_f
    iput-boolean v12, v14, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 414
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-boolean v12, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    if-eqz v12, :cond_1b

    .line 415
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/String;

    .line 416
    .local v10, "result":[Ljava/lang/String;
    if-eqz v10, :cond_17

    array-length v12, v10

    const/4 v14, 0x2

    if-ne v12, v14, :cond_17

    .line 417
    const/4 v12, 0x0

    aget-object v12, v10, v12

    if-eqz v12, :cond_15

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_19

    .line 420
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v14, "Dont get one avalible index after writeSMSToRuim."

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v14, -0x1

    invoke-static {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set8(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I

    .line 424
    :goto_10
    const/4 v12, 0x1

    aget-object v12, v10, v12

    if-eqz v12, :cond_16

    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 427
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v14, "Dont get one avalible feedbackRawPdu after writeSMSToRuim."

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v14, ""

    invoke-static {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set0(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 436
    .end local v10    # "result":[Ljava/lang/String;
    :cond_17
    :goto_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    goto/16 :goto_4

    .line 412
    :catchall_b
    move-exception v12

    monitor-exit v13

    throw v12

    .line 413
    :cond_18
    const/4 v12, 0x0

    goto :goto_f

    .line 418
    .restart local v10    # "result":[Ljava/lang/String;
    :cond_19
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v14, 0x0

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set8(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I

    goto :goto_10

    .line 425
    :cond_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v14, 0x1

    aget-object v14, v10, v14

    invoke-static {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set0(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_11

    .line 433
    .end local v10    # "result":[Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v14, -0x1

    invoke-static {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set8(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I

    .line 434
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v14, 0x0

    invoke-static {v12, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set0(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    goto :goto_11

    .line 168
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6a -> :sswitch_7
        0x6b -> :sswitch_9
        0x6c -> :sswitch_8
        0x6d -> :sswitch_a
        0xc8 -> :sswitch_b
    .end sparse-switch
.end method
