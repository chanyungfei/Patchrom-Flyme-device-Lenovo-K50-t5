.class Lcom/android/internal/telephony/uicc/UiccController$1;
.super Landroid/content/BroadcastReceiver;
.source "UiccController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1219
    if-nez p2, :cond_0

    return-void

    .line 1220
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1221
    .local v0, "action":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mIntentReceiver Receive action "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1223
    const-string/jumbo v8, "android.intent.action.sim.ACTION_RESET_MODEM"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1224
    const-string/jumbo v8, "persist.radio.simswitch"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1225
    .local v3, "phoneIdFor3G":I
    if-lez v3, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    if-le v3, v8, :cond_2

    .line 1226
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Receive ACTION_RESET_MODEM: invalid phone id."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1227
    return-void

    .line 1229
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "phone "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " will reset modem"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1230
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    add-int/lit8 v9, v3, -0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    .line 1218
    .end local v3    # "phoneIdFor3G":I
    :cond_3
    :goto_0
    return-void

    .line 1231
    :cond_4
    const-string/jumbo v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1233
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ss"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1234
    const-string/jumbo v8, "ss"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1235
    .local v5, "stateExtra":Ljava/lang/String;
    const-string/jumbo v8, "slot"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1236
    .local v4, "slot":I
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mIntentReceiver ACTION_SIM_STATE_CHANGED slot "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ,state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1238
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    if-lt v4, v8, :cond_5

    .line 1239
    const-string/jumbo v8, "UiccController"

    const-string/jumbo v9, "BroadcastReceiver SIM State changed slot is invalid"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    return-void

    .line 1243
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v2

    .line 1245
    .local v2, "iccType":Ljava/lang/String;
    :goto_1
    const-string/jumbo v8, "READY"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1246
    const-string/jumbo v8, "USIM"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1245
    if-eqz v8, :cond_3

    .line 1247
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    aget-object v8, v8, v4

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0xc8

    invoke-virtual {v9, v11, v10}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lcom/android/internal/telephony/CommandsInterface;->openIccApplication(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1243
    .end local v2    # "iccType":Ljava/lang/String;
    :cond_6
    const-string/jumbo v2, ""

    .restart local v2    # "iccType":Ljava/lang/String;
    goto :goto_1

    .line 1249
    .end local v2    # "iccType":Ljava/lang/String;
    .end local v4    # "slot":I
    .end local v5    # "stateExtra":Ljava/lang/String;
    :cond_7
    const-string/jumbo v8, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1250
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActualSvlteModeSlotId()I

    move-result v6

    .line 1251
    .local v6, "svlteSlotId":I
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    .line 1252
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Receive ACTION_SET_RADIO_TECHNOLOGY_START mOldSvlteSlotId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1253
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget v10, v10, Lcom/android/internal/telephony/uicc/UiccController;->mOldSvlteSlotId:I

    .line 1252
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1253
    const-string/jumbo v10, "  svlteSlotId: "

    .line 1252
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1254
    const-string/jumbo v10, " mSetRadioDone: "

    .line 1252
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1254
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-boolean v10, v10, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    .line 1252
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1255
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "START: mSvlteCi: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get1(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get1(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1256
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    if-ge v1, v8, :cond_a

    .line 1257
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mCis["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "]: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    aget-object v8, v8, v1

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_4
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1256
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1255
    .end local v1    # "i":I
    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    .line 1257
    .restart local v1    # "i":I
    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    .line 1259
    :cond_a
    const/4 v8, -0x1

    if-ne v6, v8, :cond_f

    .line 1260
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget v8, v8, Lcom/android/internal/telephony/uicc/UiccController;->mOldSvlteSlotId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_b

    .line 1261
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->-get1(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->unSetSvlteCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1264
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->unSetCis([Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1265
    const/4 v1, 0x0

    :goto_5
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    if-ge v1, v8, :cond_c

    .line 1266
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v9, v8, v1

    .line 1265
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1269
    :cond_c
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/uicc/UiccController;->setCis([Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 1271
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get2(Lcom/android/internal/telephony/uicc/UiccController;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_d

    .line 1272
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->-get2(Lcom/android/internal/telephony/uicc/UiccController;)I

    move-result v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->setSvlteCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1274
    :cond_d
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iput v6, v8, Lcom/android/internal/telephony/uicc/UiccController;->mOldSvlteSlotId:I

    .line 1299
    :cond_e
    :goto_6
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "END: mSvlteCi: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get1(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get1(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_7
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1300
    const/4 v1, 0x0

    :goto_8
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    if-ge v1, v8, :cond_3

    .line 1301
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mCis["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "]: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    aget-object v8, v8, v1

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_9
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1300
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1275
    :cond_f
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget v8, v8, Lcom/android/internal/telephony/uicc/UiccController;->mOldSvlteSlotId:I

    if-eq v8, v6, :cond_e

    .line 1276
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget v8, v8, Lcom/android/internal/telephony/uicc/UiccController;->mOldSvlteSlotId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_10

    .line 1277
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->-get1(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->unSetSvlteCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1280
    :cond_10
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->unSetCis([Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1282
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->setSvlteCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1283
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v8, v6}, Lcom/android/internal/telephony/uicc/UiccController;->setSvlteIndex(I)V

    .line 1284
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_11

    .line 1285
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 1296
    :goto_a
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/uicc/UiccController;->setCis([Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 1297
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iput v6, v8, Lcom/android/internal/telephony/uicc/UiccController;->mOldSvlteSlotId:I

    goto/16 :goto_6

    .line 1287
    :cond_11
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v9, v8, v6

    .line 1289
    if-nez v6, :cond_12

    .line 1290
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    goto :goto_a

    .line 1292
    :cond_12
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    goto :goto_a

    .line 1299
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 1301
    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 1303
    .end local v1    # "i":I
    .end local v6    # "svlteSlotId":I
    :cond_15
    const-string/jumbo v8, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1304
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-boolean v8, v8, Lcom/android/internal/telephony/uicc/UiccController;->mSetTrm:Z

    if-nez v8, :cond_16

    .line 1305
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    .line 1307
    :cond_16
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActualSvlteModeSlotId()I

    move-result v6

    .line 1308
    .restart local v6    # "svlteSlotId":I
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "svlteSlotId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1309
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Receive ACTION_SET_RADIO_TECHNOLOGY_DONE mSetRadioDone: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1310
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-boolean v10, v10, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    .line 1309
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1310
    const-string/jumbo v10, " mSetTrm="

    .line 1309
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1310
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-boolean v10, v10, Lcom/android/internal/telephony/uicc/UiccController;->mSetTrm:Z

    .line 1309
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1311
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "START: mSvlteCi: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get1(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get1(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_b
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1312
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    if-ge v1, v8, :cond_19

    .line 1313
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mCis["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "]: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    aget-object v8, v8, v1

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_d
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1312
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1311
    .end local v1    # "i":I
    :cond_17
    const/4 v8, 0x0

    goto :goto_b

    .line 1313
    .restart local v1    # "i":I
    :cond_18
    const/4 v8, 0x0

    goto :goto_d

    .line 1315
    :cond_19
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    new-array v7, v8, [Lcom/android/internal/telephony/CommandsInterface;

    .line 1317
    .local v7, "tempCis":[Lcom/android/internal/telephony/CommandsInterface;
    const/4 v8, -0x1

    if-ne v6, v8, :cond_1a

    .line 1318
    const/4 v1, 0x0

    :goto_e
    array-length v8, v7

    if-ge v1, v8, :cond_1b

    .line 1319
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v8, v7, v1

    .line 1318
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1322
    :cond_1a
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1c

    .line 1323
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 1334
    :cond_1b
    :goto_f
    const/4 v1, 0x0

    :goto_10
    array-length v8, v7

    if-ge v1, v8, :cond_1f

    .line 1335
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tempCis["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "]: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v8, v7, v1

    if-eqz v8, :cond_1e

    .line 1336
    aget-object v8, v7, v1

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1335
    :goto_11
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1334
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1325
    :cond_1c
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v8, v7, v6

    .line 1327
    if-nez v6, :cond_1d

    .line 1328
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    goto :goto_f

    .line 1330
    :cond_1d
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    goto :goto_f

    .line 1336
    :cond_1e
    const/4 v8, 0x0

    goto :goto_11

    .line 1338
    :cond_1f
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_24

    .line 1339
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    if-eqz v8, :cond_20

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 1340
    :cond_20
    const/4 v8, 0x0

    aget-object v8, v7, v8

    if-eqz v8, :cond_21

    const/4 v8, 0x0

    aget-object v8, v7, v8

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 1376
    :cond_21
    :goto_12
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "END: mSvlteCi: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get1(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    if-eqz v8, :cond_2b

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get1(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_13
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1377
    const/4 v1, 0x0

    :goto_14
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    array-length v8, v8

    if-ge v1, v8, :cond_3

    .line 1378
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mCis["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "]: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    aget-object v8, v8, v1

    if-eqz v8, :cond_2c

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_15
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1377
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1341
    :cond_22
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const-string/jumbo v9, "at least one CI changed"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1342
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "slot[0].activephone = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1344
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mCis[0] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1345
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tempCis[0] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1346
    const/4 v8, 0x0

    aget-object v8, v7, v8

    if-nez v8, :cond_23

    .line 1347
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const-string/jumbo v9, "at least one change as null, unSetCis/setCis limitation, abort"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1348
    return-void

    .line 1351
    :cond_23
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v7, v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    goto/16 :goto_12

    .line 1354
    :cond_24
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    if-eqz v8, :cond_25

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 1355
    :cond_25
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    if-eqz v8, :cond_26

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 1356
    :cond_26
    const/4 v8, 0x0

    aget-object v8, v7, v8

    if-eqz v8, :cond_27

    const/4 v8, 0x0

    aget-object v8, v7, v8

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 1357
    :cond_27
    const/4 v8, 0x1

    aget-object v8, v7, v8

    if-eqz v8, :cond_21

    const/4 v8, 0x1

    aget-object v8, v7, v8

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_21

    .line 1358
    :cond_28
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const-string/jumbo v9, "at least one CI changed"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1359
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "slot[0].activephone = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1361
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "slot[1].activephone = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1363
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mCis[0] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1364
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tempCis[0] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1365
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mCis[1] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1366
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tempCis[1] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1367
    const/4 v8, 0x0

    aget-object v8, v7, v8

    if-eqz v8, :cond_29

    const/4 v8, 0x1

    aget-object v8, v7, v8

    if-nez v8, :cond_2a

    .line 1368
    :cond_29
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const-string/jumbo v9, "at least one change as null, unSetCis/setCis limitation, abort"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->-wrap2(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1369
    return-void

    .line 1372
    :cond_2a
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v7, v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 1373
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->-get0(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v7, v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    goto/16 :goto_12

    .line 1376
    :cond_2b
    const/4 v8, 0x0

    goto/16 :goto_13

    .line 1378
    :cond_2c
    const/4 v8, 0x0

    goto/16 :goto_15
.end method
