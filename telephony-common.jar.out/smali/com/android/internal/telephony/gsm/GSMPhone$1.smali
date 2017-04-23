.class Lcom/android/internal/telephony/gsm/GSMPhone$1;
.super Landroid/content/BroadcastReceiver;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 3867
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3870
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 3871
    .local v3, "action":Ljava/lang/String;
    const-string/jumbo v17, "GSMPhone"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "received broadcast "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3874
    const-string/jumbo v17, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 3875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->-get0(Lcom/android/internal/telephony/gsm/GSMPhone;)Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v16

    .line 3876
    .local v16, "subMgr":Landroid/telephony/SubscriptionManager;
    const/4 v11, 0x0

    .line 3877
    .local v11, "mySubInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v16, :cond_0

    .line 3878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v11

    .line 3881
    .end local v11    # "mySubInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "persist.radio.cfu.iccid."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3882
    .local v10, "mySettingName":Ljava/lang/String;
    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3884
    .local v12, "oldIccId":Ljava/lang/String;
    const-string/jumbo v6, "2"

    .line 3885
    .local v6, "defaultQueryCfuMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSupplementaryServiceExt:Lcom/mediatek/common/telephony/ISupplementaryServiceExt;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 3886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSupplementaryServiceExt:Lcom/mediatek/common/telephony/ISupplementaryServiceExt;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/mediatek/common/telephony/ISupplementaryServiceExt;->getOpDefaultQueryCfuMode()Ljava/lang/String;

    move-result-object v6

    .line 3887
    const-string/jumbo v17, "GSMPhone"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "defaultQueryCfuMode = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3889
    :cond_1
    const-string/jumbo v17, "persist.radio.cfu.querytype"

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3892
    .local v4, "cfuSetting":Ljava/lang/String;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 3893
    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 3894
    const-string/jumbo v17, "GSMPhone"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " mySubId "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " mySettingName "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3895
    const-string/jumbo v19, " old iccid : "

    .line 3894
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3895
    const-string/jumbo v19, " new iccid : "

    .line 3894
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3896
    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v19

    .line 3894
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3897
    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3898
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "persist.radio.cfu.change."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3899
    .local v8, "isChanged":Ljava/lang/String;
    const-string/jumbo v17, "1"

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->-set0(Lcom/android/internal/telephony/gsm/GSMPhone;Z)Z

    .line 3901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 3902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwMode(I)V

    .line 3903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    const-string/jumbo v18, "persist.radio.terminal-based.cw"

    .line 3904
    const-string/jumbo v19, "disabled_tbcw"

    .line 3903
    invoke-virtual/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveTimeSlot([J)V

    .line 3910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 3911
    .local v15, "sp":Landroid/content/SharedPreferences;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "clir_key"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3912
    .local v5, "clirSetting":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_2

    .line 3913
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 3914
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "clir_key"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3915
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v17

    if-nez v17, :cond_2

    .line 3916
    const-string/jumbo v17, "GSMPhone"

    const-string/jumbo v18, "failed to commit the removal of CLIR preference"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3920
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    const-string/jumbo v18, "persist.radio.ut.cfu.mode"

    .line 3921
    const-string/jumbo v19, "disabled_ut_cfu_mode"

    .line 3920
    invoke-virtual/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 3925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getState()I

    move-result v17

    if-nez v17, :cond_3

    .line 3926
    const-string/jumbo v17, "GSMPhone"

    const-string/jumbo v18, "Send EVENT_QUERY_CFU"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    const/16 v18, 0x7d2

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 3928
    .local v9, "msgQueryCfu":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessage(Landroid/os/Message;)Z

    .line 3937
    .end local v5    # "clirSetting":I
    .end local v8    # "isChanged":Ljava/lang/String;
    .end local v9    # "msgQueryCfu":Landroid/os/Message;
    .end local v15    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    :goto_0
    const-string/jumbo v17, "GSMPhone"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onReceive(): ACTION_SUBINFO_RECORD_UPDATED: mTbcwMode = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->-get1(Lcom/android/internal/telephony/gsm/GSMPhone;)I

    move-result v19

    .line 3937
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->-get1(Lcom/android/internal/telephony/gsm/GSMPhone;)I

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->-wrap0(Lcom/android/internal/telephony/gsm/GSMPhone;I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 3940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->-wrap1(Lcom/android/internal/telephony/gsm/GSMPhone;I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 3941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwMode(I)V

    .line 3942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 3869
    .end local v4    # "cfuSetting":Ljava/lang/String;
    .end local v6    # "defaultQueryCfuMode":Ljava/lang/String;
    .end local v10    # "mySettingName":Ljava/lang/String;
    .end local v12    # "oldIccId":Ljava/lang/String;
    .end local v16    # "subMgr":Landroid/telephony/SubscriptionManager;
    :cond_4
    :goto_1
    return-void

    .line 3930
    .restart local v4    # "cfuSetting":Ljava/lang/String;
    .restart local v6    # "defaultQueryCfuMode":Ljava/lang/String;
    .restart local v10    # "mySettingName":Ljava/lang/String;
    .restart local v12    # "oldIccId":Ljava/lang/String;
    .restart local v16    # "subMgr":Landroid/telephony/SubscriptionManager;
    :cond_5
    const-string/jumbo v17, "2"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 3931
    const-string/jumbo v17, "GSMPhone"

    const-string/jumbo v18, "Always query CFU."

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->-set0(Lcom/android/internal/telephony/gsm/GSMPhone;Z)Z

    .line 3933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    const/16 v18, 0x7d2

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 3934
    .restart local v9    # "msgQueryCfu":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3945
    .end local v4    # "cfuSetting":Ljava/lang/String;
    .end local v6    # "defaultQueryCfuMode":Ljava/lang/String;
    .end local v9    # "msgQueryCfu":Landroid/os/Message;
    .end local v10    # "mySettingName":Ljava/lang/String;
    .end local v12    # "oldIccId":Ljava/lang/String;
    .end local v16    # "subMgr":Landroid/telephony/SubscriptionManager;
    :cond_6
    const-string/jumbo v17, "com.android.ims.IMS_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 3946
    const-string/jumbo v17, "android:regState"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 3947
    .local v13, "reg":I
    const-string/jumbo v17, "android:phone_id"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 3948
    .local v14, "slotId":I
    const-string/jumbo v17, "GSMPhone"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onReceive ACTION_IMS_STATE_CHANGED: reg="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3949
    const-string/jumbo v19, ", SimID="

    .line 3948
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v17

    move/from16 v0, v17

    if-ne v14, v0, :cond_4

    if-nez v13, :cond_4

    .line 3951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->-wrap1(Lcom/android/internal/telephony/gsm/GSMPhone;I)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 3952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwMode(I)V

    .line 3953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwToEnabledOnIfDisabled()V

    goto/16 :goto_1

    .line 3956
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwMode(I)V

    .line 3957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwToEnabledOnIfDisabled()V

    goto/16 :goto_1
.end method
