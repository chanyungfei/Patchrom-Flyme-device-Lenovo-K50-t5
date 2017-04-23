.class Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;
.super Landroid/content/BroadcastReceiver;
.source "FdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/FdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "action":Ljava/lang/String;
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onReceive: action="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v10, "ril.fd.mode"

    const-string/jumbo v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 116
    .local v2, "fdMdEnableMode":I
    const-string/jumbo v10, "gsm.3gswitch"

    const/4 v11, 0x1

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    .line 117
    .local v3, "fdSimId":I
    const-string/jumbo v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 119
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v11, 0x1

    invoke-static {v10, v11, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-wrap2(Lcom/mediatek/internal/telephony/dataconnection/FdManager;ZII)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string/jumbo v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 121
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v11, 0x0

    invoke-static {v10, v11, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-wrap2(Lcom/mediatek/internal/telephony/dataconnection/FdManager;ZII)V

    goto :goto_0

    .line 122
    :cond_2
    const-string/jumbo v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 123
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdSupport()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 124
    const-string/jumbo v10, "status"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 125
    .local v9, "status":I
    const-string/jumbo v10, "plugged"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 126
    .local v4, "plugged":I
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-get0(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v5

    .line 128
    .local v5, "previousChargingMode":Z
    const-string/jumbo v7, ""

    .local v7, "sChargingModeStr":Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 129
    .local v8, "sPluggedStr":Ljava/lang/String;
    const/4 v10, 0x2

    if-ne v9, v10, :cond_9

    .line 130
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-set0(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z

    .line 131
    const-string/jumbo v7, "Charging"

    .line 137
    :goto_1
    const/4 v10, 0x1

    if-ne v4, v10, :cond_a

    .line 138
    const-string/jumbo v8, "Plugged in AC"

    .line 143
    :cond_3
    :goto_2
    const/4 v10, 0x1

    if-eq v4, v10, :cond_4

    .line 144
    const/4 v10, 0x2

    if-ne v4, v10, :cond_5

    .line 145
    :cond_4
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-set0(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z

    .line 148
    :cond_5
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-get1(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)I

    move-result v6

    .line 149
    .local v6, "previousEnableFDOnCharging":I
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    .line 150
    const-string/jumbo v11, "fd.on.charge"

    const-string/jumbo v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 149
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-set1(Lcom/mediatek/internal/telephony/dataconnection/FdManager;I)I

    .line 152
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-get0(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v10

    if-ne v5, v10, :cond_6

    .line 153
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-get1(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)I

    move-result v10

    if-eq v6, v10, :cond_7

    .line 154
    :cond_6
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "fdMdEnableMode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", 3gSimID="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 155
    const-string/jumbo v12, ", when charging state is changed"

    .line 154
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 156
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "previousEnableFdOnCharging="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 157
    const-string/jumbo v12, ", mEnableFdOnCharing="

    .line 156
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 157
    iget-object v12, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-get1(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)I

    move-result v12

    .line 156
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 158
    const-string/jumbo v12, ", when charging state is changed"

    .line 156
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 159
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "previousChargingMode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 160
    const-string/jumbo v12, ", mChargingMode="

    .line 159
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 160
    iget-object v12, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-get0(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v12

    .line 159
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 160
    const-string/jumbo v12, ", status="

    .line 159
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 161
    const-string/jumbo v12, "("

    .line 159
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 161
    const-string/jumbo v12, ")"

    .line 159
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 165
    :cond_7
    const/4 v10, 0x1

    if-ne v2, v10, :cond_0

    .line 166
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-get3(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-wrap1(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v10

    if-ne v10, v3, :cond_0

    .line 167
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-get0(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v10

    if-ne v5, v10, :cond_8

    .line 168
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-get1(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)I

    move-result v10

    if-eq v6, v10, :cond_0

    .line 169
    :cond_8
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-wrap0(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 170
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)V

    goto/16 :goto_0

    .line 133
    .end local v6    # "previousEnableFDOnCharging":I
    :cond_9
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-set0(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z

    .line 134
    const-string/jumbo v7, "Non-Charging"

    goto/16 :goto_1

    .line 139
    :cond_a
    const/4 v10, 0x2

    if-ne v4, v10, :cond_3

    .line 140
    const-string/jumbo v8, "Plugged in USB"

    goto/16 :goto_2

    .line 172
    .restart local v6    # "previousEnableFDOnCharging":I
    :cond_b
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)V

    goto/16 :goto_0

    .line 178
    .end local v4    # "plugged":I
    .end local v5    # "previousChargingMode":Z
    .end local v6    # "previousEnableFDOnCharging":I
    .end local v7    # "sChargingModeStr":Ljava/lang/String;
    .end local v8    # "sPluggedStr":Ljava/lang/String;
    .end local v9    # "status":I
    :cond_c
    const-string/jumbo v10, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 179
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdSupport()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 180
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const-string/jumbo v11, "Received ConnectivityManager.ACTION_TETHER_STATE_CHANGED"

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 182
    const-string/jumbo v10, "activeArray"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 183
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_d

    const/4 v10, 0x1

    :goto_3
    invoke-static {v11, v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-set2(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z

    .line 184
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[TETHER_STATE_CHANGED]mIsTetheredMode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-get2(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 185
    const-string/jumbo v12, "mChargingMode="

    .line 184
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 185
    iget-object v12, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-get0(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v12

    .line 184
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 186
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-wrap0(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 187
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)V

    goto/16 :goto_0

    .line 183
    :cond_d
    const/4 v10, 0x0

    goto :goto_3

    .line 189
    :cond_e
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->-wrap3(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)V

    goto/16 :goto_0
.end method
