.class Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PiezoObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PiezoObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothheadsetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PiezoObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/PiezoObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/PiezoObserver;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;->this$0:Lcom/android/server/PiezoObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PiezoObserver;Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/PiezoObserver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;-><init>(Lcom/android/server/PiezoObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v7, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 165
    const-string/jumbo v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 166
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v7, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 168
    .local v6, "state":I
    sget-object v7, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "BluetoothheadsetReceiver HEADSET STATE -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 174
    iget-object v7, p0, Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;->this$0:Lcom/android/server/PiezoObserver;

    invoke-static {v7, v10}, Lcom/android/server/PiezoObserver;->-set0(Lcom/android/server/PiezoObserver;Z)Z

    .line 176
    :try_start_0
    iget-object v7, p0, Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;->this$0:Lcom/android/server/PiezoObserver;

    invoke-static {v7}, Lcom/android/server/PiezoObserver;->-get0(Lcom/android/server/PiezoObserver;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 177
    const-string/jumbo v8, "ceramic_settings"

    .line 176
    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    .line 179
    .local v5, "mCoverState":I
    iget-object v7, p0, Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;->this$0:Lcom/android/server/PiezoObserver;

    invoke-static {v7}, Lcom/android/server/PiezoObserver;->-get0(Lcom/android/server/PiezoObserver;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "ceramics_state"

    const/4 v9, 0x0

    .line 178
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_1

    const/4 v4, 0x1

    .line 180
    .local v4, "isOpen":Z
    :goto_0
    sget-object v7, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "---onReceive---mCoverState->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 181
    const-string/jumbo v9, "---state->"

    .line 180
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz v4, :cond_0

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v7, "ceramic_speaker_notify_waves_state_action"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "a_intent":Landroid/content/Intent;
    const-string/jumbo v7, "state"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    iget-object v7, p0, Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;->this$0:Lcom/android/server/PiezoObserver;

    invoke-static {v7}, Lcom/android/server/PiezoObserver;->-get0(Lcom/android/server/PiezoObserver;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 187
    iget-object v7, p0, Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;->this$0:Lcom/android/server/PiezoObserver;

    invoke-static {v7}, Lcom/android/server/PiezoObserver;->-get0(Lcom/android/server/PiezoObserver;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "ceramic_speaker_notify_waves_state_action"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0    # "a_intent":Landroid/content/Intent;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "isOpen":Z
    .end local v5    # "mCoverState":I
    .end local v6    # "state":I
    :cond_0
    :goto_1
    return-void

    .line 178
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v5    # "mCoverState":I
    .restart local v6    # "state":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "isOpen":Z
    goto :goto_0

    .line 191
    .end local v4    # "isOpen":Z
    .end local v5    # "mCoverState":I
    :catch_0
    move-exception v3

    .line 192
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 195
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    if-nez v6, :cond_0

    .line 196
    iget-object v7, p0, Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;->this$0:Lcom/android/server/PiezoObserver;

    invoke-static {v7, v11}, Lcom/android/server/PiezoObserver;->-set0(Lcom/android/server/PiezoObserver;Z)Z

    .line 198
    :try_start_1
    iget-object v7, p0, Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;->this$0:Lcom/android/server/PiezoObserver;

    invoke-static {v7}, Lcom/android/server/PiezoObserver;->-get0(Lcom/android/server/PiezoObserver;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 199
    const-string/jumbo v8, "ceramic_settings"

    .line 198
    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    .line 201
    .restart local v5    # "mCoverState":I
    iget-object v7, p0, Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;->this$0:Lcom/android/server/PiezoObserver;

    invoke-static {v7}, Lcom/android/server/PiezoObserver;->-get0(Lcom/android/server/PiezoObserver;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "ceramics_state"

    const/4 v9, 0x0

    .line 200
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_3

    const/4 v4, 0x1

    .line 202
    .restart local v4    # "isOpen":Z
    :goto_2
    sget-object v7, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "---onReceive---mCoverState->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 203
    const-string/jumbo v9, "---state->"

    .line 202
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-ne v5, v10, :cond_0

    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;->this$0:Lcom/android/server/PiezoObserver;

    invoke-static {v7}, Lcom/android/server/PiezoObserver;->-get1(Lcom/android/server/PiezoObserver;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v7, "ceramic_speaker_notify_waves_state_action"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .restart local v0    # "a_intent":Landroid/content/Intent;
    const-string/jumbo v7, "state"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    iget-object v7, p0, Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;->this$0:Lcom/android/server/PiezoObserver;

    invoke-static {v7}, Lcom/android/server/PiezoObserver;->-get0(Lcom/android/server/PiezoObserver;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    iget-object v7, p0, Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;->this$0:Lcom/android/server/PiezoObserver;

    invoke-static {v7}, Lcom/android/server/PiezoObserver;->-get0(Lcom/android/server/PiezoObserver;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "ceramic_speaker_notify_waves_state_action"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 211
    .end local v0    # "a_intent":Landroid/content/Intent;
    .end local v4    # "isOpen":Z
    .end local v5    # "mCoverState":I
    :catch_1
    move-exception v3

    .line 213
    .restart local v3    # "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 200
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "mCoverState":I
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "isOpen":Z
    goto :goto_2
.end method
