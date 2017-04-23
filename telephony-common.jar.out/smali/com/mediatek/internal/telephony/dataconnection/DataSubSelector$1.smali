.class Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;
.super Landroid/content/BroadcastReceiver;
.source "DataSubSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive: action="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 126
    const-string/jumbo v13, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 127
    const-string/jumbo v13, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 128
    .local v11, "simStatus":Ljava/lang/String;
    const-string/jumbo v13, "slot"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 129
    .local v12, "slotId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "slotId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " simStatus: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " mIsNeedWaitImsi: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 130
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v15

    .line 129
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 130
    const-string/jumbo v15, " mIsNeedWaitUnlock: "

    .line 129
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 131
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v16, "persist.radio.unlock"

    invoke-static/range {v15 .. v16}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v15

    .line 129
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v13, "IMSI"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 134
    const-string/jumbo v13, "1"

    .line 133
    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 136
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 137
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 138
    const-string/jumbo v13, "OP01"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 139
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "get imsi and need to check op01 again"

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)Landroid/content/Intent;

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 159
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 161
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "get imsi and need to check op02Roaming again"

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    move-result v13

    if-nez v13, :cond_3

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 206
    :cond_3
    :goto_1
    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->clearRilMccMnc(I)V

    .line 120
    .end local v11    # "simStatus":Ljava/lang/String;
    .end local v12    # "slotId":I
    :cond_4
    :goto_2
    return-void

    .line 147
    .restart local v11    # "simStatus":Ljava/lang/String;
    .restart local v12    # "slotId":I
    :cond_5
    const-string/jumbo v13, "OP02"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "get imsi and need to check op02 again"

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    goto :goto_0

    .line 152
    :cond_6
    const-string/jumbo v13, "OP18"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "get imsi and need to check op18 again"

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap2(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 155
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    goto/16 :goto_0

    .line 166
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "persist.radio.unlock"

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 167
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "persist.radio.unlock.roaming"

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v13

    .line 166
    if-eqz v13, :cond_3

    .line 168
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "get imsi because unlock"

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v13, "phoneEx"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    .line 170
    invoke-static {v13}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v6

    .line 172
    .local v6, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v6, :cond_3

    .line 174
    :try_start_0
    invoke-interface {v6}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isCapabilitySwitching()Z

    move-result v13

    if-nez v13, :cond_3

    .line 177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "persist.radio.unlock"

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 178
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "persist.radio.unlock"

    const-string/jumbo v15, "false"

    invoke-static {v13, v14, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap10(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string/jumbo v13, "OP01"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 180
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap12(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 196
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "persist.radio.unlock.roaming"

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "persist.radio.unlock.roaming"

    const-string/jumbo v15, "false"

    invoke-static {v13, v14, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap10(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 201
    :catch_0
    move-exception v3

    .line 202
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 181
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_a
    :try_start_1
    const-string/jumbo v13, "OP02"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 183
    const-string/jumbo v13, "ro.mtk_disable_cap_switch"

    const/4 v14, 0x0

    .line 182
    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 184
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap14(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_3

    .line 186
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap13(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    goto :goto_3

    .line 188
    :cond_c
    const-string/jumbo v13, "OM"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap11(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_3

    .line 190
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 191
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap15(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 192
    :cond_e
    const-string/jumbo v13, "OP18"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap16(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 207
    .end local v6    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_f
    const-string/jumbo v13, "ABSENT"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 209
    const-string/jumbo v13, "0"

    .line 208
    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    .line 210
    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->clearRilMccMnc(I)V

    goto/16 :goto_2

    .line 211
    :cond_10
    const-string/jumbo v13, "NOT_READY"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 213
    const-string/jumbo v13, "0"

    .line 212
    invoke-static {v12, v13}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 215
    .end local v11    # "simStatus":Ljava/lang/String;
    .end local v12    # "slotId":I
    :cond_11
    const-string/jumbo v13, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    .line 216
    const-string/jumbo v13, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 215
    if-eqz v13, :cond_1a

    .line 217
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mIsNeedWaitUnlock = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v16, "persist.radio.unlock"

    invoke-static/range {v15 .. v16}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 218
    const-string/jumbo v15, ", mIsNeedWaitUnlockRoaming = "

    .line 217
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 218
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .line 219
    const-string/jumbo v16, "persist.radio.unlock.roaming"

    .line 218
    invoke-static/range {v15 .. v16}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v15

    .line 217
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "persist.radio.unlock"

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_13

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "persist.radio.unlock.roaming"

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v13

    .line 220
    if-eqz v13, :cond_4

    .line 222
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "persist.radio.unlock"

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "persist.radio.unlock"

    const-string/jumbo v15, "false"

    invoke-static {v13, v14, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap10(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string/jumbo v13, "OP01"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap12(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 241
    :cond_14
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "persist.radio.unlock.roaming"

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 242
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "persist.radio.unlock.roaming"

    const-string/jumbo v15, "false"

    invoke-static {v13, v14, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap10(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    goto/16 :goto_2

    .line 226
    :cond_15
    const-string/jumbo v13, "OP02"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 227
    const-string/jumbo v13, "ro.mtk_disable_cap_switch"

    .line 228
    const/4 v14, 0x0

    .line 227
    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap14(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_4

    .line 231
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap13(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    goto :goto_4

    .line 233
    :cond_17
    const-string/jumbo v13, "OM"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 234
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap11(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_4

    .line 235
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 236
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap15(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 237
    :cond_19
    const-string/jumbo v13, "OP18"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 238
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap16(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 246
    :cond_1a
    const-string/jumbo v13, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 248
    const/4 v7, 0x0

    .line 249
    .local v7, "isSvlteModeSwitching":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isSvlteModeSwitching()Z

    move-result v7

    .line 250
    .local v7, "isSvlteModeSwitching":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ACTION_SET_RADIO_TECHNOLOGY_DONE,and isSvlteModeSwitching = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 252
    if-eqz v7, :cond_1b

    .line 254
    return-void

    .line 256
    :cond_1b
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 257
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 259
    :cond_1c
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "OM"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 260
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 261
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap17(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 263
    .end local v7    # "isSvlteModeSwitching":Z
    :cond_1d
    const-string/jumbo v13, "mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 264
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "ACTION_LOCATED_PLMN_CHANGED"

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 265
    const-string/jumbo v13, "ro.mtk_disable_cap_switch"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_4

    .line 266
    const-string/jumbo v13, "OP02"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 267
    const-string/jumbo v13, "plmn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, "plmn":Ljava/lang/String;
    if-eqz v9, :cond_4

    const-string/jumbo v13, ""

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "plmn = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v13, "first_time_roaming"

    const/4 v14, 0x0

    .line 270
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 272
    .local v10, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 274
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v13, "need_to_execute_roaming"

    const/4 v14, 0x1

    .line 273
    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 275
    .local v5, "firstTimeRoaming":Z
    const-string/jumbo v13, "460"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1f

    .line 276
    if-eqz v5, :cond_4

    .line 277
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v13

    if-nez v13, :cond_1e

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    goto/16 :goto_2

    .line 282
    :cond_1e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    goto/16 :goto_2

    .line 287
    :cond_1f
    if-nez v5, :cond_4

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "reset roaming flag"

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 290
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 291
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 297
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "firstTimeRoaming":Z
    .end local v9    # "plmn":Ljava/lang/String;
    .end local v10    # "preference":Landroid/content/SharedPreferences;
    :cond_20
    const-string/jumbo v13, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_27

    .line 298
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v13, "state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_22

    const/4 v13, 0x1

    :goto_5
    invoke-static {v14, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 299
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ACTION_AIRPLANE_MODE_CHANGED, enabled = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 301
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get2(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set2(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 303
    const-string/jumbo v13, "OP01"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 304
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap12(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 318
    :cond_21
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 319
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 320
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    goto/16 :goto_2

    .line 298
    :cond_22
    const/4 v13, 0x0

    goto :goto_5

    .line 305
    :cond_23
    const-string/jumbo v13, "OP02"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    .line 306
    const-string/jumbo v13, "ro.mtk_disable_cap_switch"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_24

    .line 308
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap14(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_6

    .line 310
    :cond_24
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap13(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    goto :goto_6

    .line 312
    :cond_25
    const-string/jumbo v13, "OM"

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 313
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap11(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_6

    .line 314
    :cond_26
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 315
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap15(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 323
    :cond_27
    const-string/jumbo v13, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    .line 324
    const-string/jumbo v13, "subscription"

    .line 325
    const/4 v14, -0x1

    .line 324
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 326
    .local v8, "nDefaultDataSubId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mIsUserConfirmDefaultData/nDefaultDataSubId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 327
    const-string/jumbo v15, "/"

    .line 326
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v13

    if-eqz v13, :cond_28

    .line 329
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v13

    .line 328
    if-eqz v13, :cond_28

    .line 330
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)V

    .line 331
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 333
    :cond_28
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)V

    goto/16 :goto_2

    .line 334
    .end local v8    # "nDefaultDataSubId":I
    :cond_29
    const-string/jumbo v13, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    .line 338
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 339
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v13

    if-nez v13, :cond_2a

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "OM"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 338
    if-eqz v13, :cond_4

    .line 341
    :cond_2a
    const-string/jumbo v13, "simDetectStatus"

    .line 342
    const/4 v14, 0x4

    .line 340
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 343
    .local v2, "detectedType":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "DataSubSelector detectedType:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 344
    const/4 v13, 0x4

    if-ne v2, v13, :cond_4

    .line 345
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 349
    .end local v2    # "detectedType":I
    :cond_2b
    const-string/jumbo v13, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2d

    .line 351
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v13

    if-nez v13, :cond_2c

    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get7()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "OM"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 352
    :cond_2c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-set8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    goto/16 :goto_2

    .line 354
    :cond_2d
    const-string/jumbo v13, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 355
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string/jumbo v14, "DataSubSelector receive ACTION_SHUTDOWN_IPO, clear properties"

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->clearAllSimImsiStatus()V

    .line 357
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->-get9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)I

    move-result v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->clearAllRilMccMnc(I)V

    goto/16 :goto_2
.end method
