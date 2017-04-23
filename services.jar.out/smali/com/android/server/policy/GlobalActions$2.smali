.class Lcom/android/server/policy/GlobalActions$2;
.super Landroid/telephony/PhoneStateListener;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 1246
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1247
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "Phone State = CALL_STATE_RINGING dismissDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get8(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1245
    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v4, 0x0

    .line 1217
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1221
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 1226
    .local v1, "isInAirplaneMode":Z
    :goto_0
    move v0, v1

    .line 1229
    .local v0, "inAirplaneMode":Z
    const-string/jumbo v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Phone State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1230
    const-string/jumbo v4, " gemini = "

    .line 1229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1230
    const-string/jumbo v4, "ro.mtk_gemini_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1231
    const-string/jumbo v4, " inAirplaneMode "

    .line 1229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_1
    invoke-static {v3, v2}, Lcom/android/server/policy/GlobalActions;->-set1(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1236
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get2(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1237
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get2(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 1240
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get0(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 1216
    return-void

    .line 1221
    .end local v0    # "inAirplaneMode":Z
    .end local v1    # "isInAirplaneMode":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isInAirplaneMode":Z
    goto :goto_0

    .line 1234
    .restart local v0    # "inAirplaneMode":Z
    :cond_3
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method
