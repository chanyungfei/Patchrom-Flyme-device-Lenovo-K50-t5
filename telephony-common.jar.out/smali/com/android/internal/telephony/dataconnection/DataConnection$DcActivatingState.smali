.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActivatingState"
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$internal$telephony$dataconnection$DataCallResponse$SetupResult:[I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->-com_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->-com_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->values()[Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_UnacceptableParameter:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->-com_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 2067
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DcActivatingState: enter dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2068
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DcActivatingState: exit dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2074
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2085
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState: msg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap7(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2086
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    .line 2332
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState not handled msg.what="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2333
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v14

    .line 2332
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2333
    const-string/jumbo v14, " RefCount="

    .line 2332
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2333
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v14, v14, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    .line 2332
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2335
    const/4 v7, 0x0

    .line 2338
    .local v7, "retVal":Z
    :goto_0
    return v7

    .line 2091
    .end local v7    # "retVal":Z
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap11(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    .line 2092
    const/4 v7, 0x1

    .line 2093
    .restart local v7    # "retVal":Z
    goto :goto_0

    .line 2096
    .end local v7    # "retVal":Z
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 2097
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2099
    .local v3, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap4(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    move-result-object v6

    .line 2100
    .local v6, "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    if-eq v6, v12, :cond_0

    .line 2101
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v12

    if-eq v12, v3, :cond_0

    .line 2102
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState: WEIRD mConnectionsParams:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2103
    const-string/jumbo v14, " != cp:"

    .line 2102
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 2107
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState onSetupConnectionCompleted result="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2108
    const-string/jumbo v14, " dc="

    .line 2107
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2108
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 2107
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2110
    iget-object v12, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v12, :cond_1

    .line 2111
    iget-object v12, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onSetupConnectionCompleted result="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 2113
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->-getcom_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues()[I

    move-result-object v12

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 2206
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Unknown SetupResult, should not happen"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2116
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    sget-object v13, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2117
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get2(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap24(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2119
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 2208
    :goto_1
    const/4 v7, 0x1

    .line 2209
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 2125
    .end local v7    # "retVal":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v12

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v12, v3, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2126
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap24(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 2130
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V

    .line 2131
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get11(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap24(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 2135
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get23(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v12

    iget-object v12, v12, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const v14, 0x40002

    invoke-virtual {v13, v14, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 2135
    invoke-interface {v12, v13}, Lcom/android/internal/telephony/CommandsInterface;->getLastDataCallFailCause(Landroid/os/Message;)V

    goto :goto_1

    .line 2139
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v12

    .line 2140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 2139
    invoke-virtual {v12, v13, v1}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->getSuggestedRetryTime(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/AsyncResult;)I

    move-result v5

    .line 2141
    .local v5, "delay":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "DcActivatingState: ERR_RilError  delay="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2143
    const-string/jumbo v13, " isRetryNeeded="

    .line 2141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v13, v13, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v13

    .line 2141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2144
    const-string/jumbo v13, " result="

    .line 2141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2145
    const-string/jumbo v13, " result.isRestartRadioFail="

    .line 2141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2146
    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    move-result v13

    .line 2141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2147
    const-string/jumbo v13, " result.isPermanentFail="

    .line 2141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v13

    iget-object v14, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v13

    .line 2141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2149
    .local v10, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v12, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2150
    iget-object v12, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v12, :cond_2

    iget-object v12, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v12, v10}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 2151
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCauseManager:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2152
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v14, v14, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    const/4 v15, 0x0

    .line 2151
    invoke-virtual {v12, v13, v14, v15}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->canHandleFailCause(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2154
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap5(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .line 2155
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2156
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v5

    .line 2158
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState: FALLBACK PDP retry start, only one IPv4 or IPv6 is accepted, change delay="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    sget-object v13, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PDP_FAIL_FALLBACK_RETRY:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v12

    .line 2165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v13, v13, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    const v14, 0x40010

    .line 2164
    invoke-virtual {v12, v14, v13, v5}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarm(III)V

    .line 2166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get2(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap24(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2169
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: No FALLBACK PDP retry start but at least one IPv4 or IPv6 is accepted"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2173
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    sget-object v13, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2174
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get2(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap24(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    goto/16 :goto_1

    .line 2178
    :cond_4
    iget-object v12, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    move-result v12

    if-nez v12, :cond_5

    .line 2179
    iget-object v12, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v12, :cond_6

    .line 2180
    iget-object v12, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2181
    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v13

    .line 2180
    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/ApnContext;->restartOnError(I)Z

    move-result v12

    .line 2178
    if-eqz v12, :cond_6

    .line 2182
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: ERR_RilError restart radio"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2183
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendRestartRadio()V

    .line 2184
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v12

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v12, v3, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap24(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2186
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v12

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2187
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: ERR_RilError perm error"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2188
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v12

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v12, v3, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2189
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap24(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2190
    :cond_7
    if-ltz v5, :cond_8

    .line 2191
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: ERR_RilError retry"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2192
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v12

    .line 2193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v13, v13, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    .line 2192
    const v14, 0x4000a

    invoke-virtual {v12, v14, v13, v5}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarm(III)V

    .line 2194
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get24(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap24(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2196
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: ERR_RilError no retry"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2197
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v12

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v12, v3, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2198
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap24(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2202
    .end local v5    # "delay":I
    .end local v10    # "str":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState: stale EVENT_SETUP_DATA_CONNECTION_DONE tag:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2203
    iget v14, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    .line 2202
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2203
    const-string/jumbo v14, " != mTag:"

    .line 2202
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2203
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v14, v14, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    .line 2202
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2212
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v6    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 2213
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2214
    .restart local v3    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget v12, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v13, v13, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    if-ne v12, v13, :cond_15

    .line 2215
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v12

    if-eq v12, v3, :cond_9

    .line 2216
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState: WEIRD mConnectionsParams:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2217
    const-string/jumbo v14, " != cp:"

    .line 2216
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 2220
    :cond_9
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2222
    .local v2, "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_a

    .line 2223
    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [I

    const/4 v13, 0x0

    aget v9, v12, v13

    .line 2224
    .local v9, "rilFailCause":I
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    .line 2225
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne v2, v12, :cond_a

    .line 2227
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState msg.what=EVENT_GET_LAST_FAIL_DONE BAD: error was NONE, change to UNKNOWN"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2230
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2233
    .end local v9    # "rilFailCause":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2236
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCauseManager:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v13, v13, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    const/4 v14, 0x0

    invoke-virtual {v12, v2, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->canHandleFailCause(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 2239
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: DcFailCauseManager re-configure retry manager"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2248
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v8

    .line 2250
    .local v8, "retryDelay":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState msg.what=EVENT_GET_LAST_FAIL_DONE cause="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2252
    const-string/jumbo v14, " retryDelay="

    .line 2250
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2253
    const-string/jumbo v14, " isRetryNeeded="

    .line 2250
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2253
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v14, v14, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v14

    .line 2250
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2254
    const-string/jumbo v14, " dc="

    .line 2250
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2254
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 2250
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2256
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 2258
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: EVENT_GET_LAST_FAIL_DONE restart radio"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2261
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendRestartRadio()V

    .line 2262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v12

    invoke-virtual {v12, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2263
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap24(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2319
    .end local v2    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v8    # "retryDelay":I
    :goto_3
    const/4 v7, 0x1

    .line 2320
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 2242
    .end local v7    # "retVal":Z
    .restart local v2    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v11

    .line 2243
    .local v11, "tmpCount":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 2244
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get3(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v13

    const-string/jumbo v14, "default"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v13

    .line 2243
    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap9(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V

    .line 2245
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12, v11}, Lcom/android/internal/telephony/RetryManager;->setRetryCount(I)V

    goto/16 :goto_2

    .line 2264
    .end local v11    # "tmpCount":I
    .restart local v8    # "retryDelay":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCauseManager:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v2, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->canHandleFailCause(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 2265
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v12

    .line 2264
    if-eqz v12, :cond_f

    .line 2267
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState: mOperator="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2268
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v14, v14, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCauseManager:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    iget-object v14, v14, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mOperator:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 2267
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2270
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCauseManager:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    iget-object v12, v12, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mOperator:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 2271
    sget-object v13, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->OP002Ext:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 2270
    if-ne v12, v13, :cond_d

    .line 2273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: EVENT_GET_LAST_FAIL_DONE FALLBACK retry"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2276
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v12

    .line 2277
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v13, v13, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    .line 2276
    const v14, 0x4000a

    invoke-virtual {v12, v14, v13, v8}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarm(III)V

    .line 2278
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get24(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap24(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2279
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCauseManager:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    iget-object v12, v12, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mOperator:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 2280
    sget-object v13, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->OP001Ext:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 2279
    if-ne v12, v13, :cond_e

    .line 2281
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: SM_CAUSE need retry"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2282
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v12

    .line 2283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v13, v13, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    .line 2282
    const v14, 0x4000a

    invoke-virtual {v12, v14, v13, v8}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarmExact(III)V

    .line 2284
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get24(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap24(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2286
    :cond_e
    const-string/jumbo v4, "DcActivatingState: SM_CAUSE no retry because exceed retry count"

    .line 2288
    .local v4, "dbgMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v12, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2289
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v12

    invoke-virtual {v12, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2290
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap24(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2293
    .end local v4    # "dbgMsg":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v12

    if-nez v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap1(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 2294
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: EVENT_GET_LAST_FAIL_DONE perm er"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2295
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v12

    invoke-virtual {v12, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap24(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2297
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 2298
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MULTIPLE_PDN_APN_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq v2, v12, :cond_12

    .line 2299
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcFailCause;->DUE_TO_REACH_RETRY_COUNTER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne v2, v12, :cond_13

    .line 2301
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: no retry by NW reject"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2302
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v12

    invoke-virtual {v12, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2303
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap24(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2304
    :cond_13
    if-ltz v8, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 2305
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: EVENT_GET_LAST_FAIL_DONE retry"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2306
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v13, v13, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    const v14, 0x4000a

    invoke-virtual {v12, v14, v13, v8}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarm(III)V

    .line 2308
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get24(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap24(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2310
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: EVENT_GET_LAST_FAIL_DONE no retry"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2311
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v12

    invoke-virtual {v12, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2312
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap24(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2315
    .end local v2    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v8    # "retryDelay":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState: stale EVENT_GET_LAST_FAIL_DONE tag:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2316
    iget v14, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    .line 2315
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2316
    const-string/jumbo v14, " != mTag:"

    .line 2315
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2316
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v14, v14, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    .line 2315
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2325
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState deferMsg: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ", address info: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2326
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap11(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    .line 2327
    const/4 v7, 0x1

    .line 2328
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 2086
    nop

    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_0
        0x40001 -> :sswitch_1
        0x40002 -> :sswitch_2
        0x4000b -> :sswitch_0
        0x40012 -> :sswitch_0
        0x40013 -> :sswitch_3
        0x40014 -> :sswitch_3
    .end sparse-switch

    .line 2113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
