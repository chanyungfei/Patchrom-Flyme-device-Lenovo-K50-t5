.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;
.super Landroid/content/BroadcastReceiver;
.source "WorldPhoneOm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 256
    const-string/jumbo v17, "[Receiver]+"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "action":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Action: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 260
    const-string/jumbo v17, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 261
    const-string/jumbo v17, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 262
    .local v13, "simStatus":Ljava/lang/String;
    const-string/jumbo v17, "slot"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 263
    .local v14, "slotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set5(I)I

    .line 264
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "slotId: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " simStatus: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " sMajorSim:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 265
    const-string/jumbo v17, "IMSI"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 266
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set14(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 267
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get32()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 268
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get10()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get21()[Lcom/android/internal/telephony/Phone;

    move-result-object v18

    aget-object v18, v18, v14

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v18

    aput-object v18, v17, v14

    .line 274
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get10()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v17

    aget-object v17, v17, v14

    if-eqz v17, :cond_3

    .line 275
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get11()[Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get10()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v18

    aget-object v18, v18, v14

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v17, v14

    .line 280
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get9()[I

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap3(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)I

    move-result v18

    aput v18, v17, v14

    .line 281
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sImsi["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "]:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get11()[Ljava/lang/String;

    move-result-object v18

    aget-object v18, v18, v14

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get12()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v17

    move/from16 v0, v17

    if-ne v14, v0, :cond_9

    .line 285
    const-string/jumbo v17, "Major SIM"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get11()[Ljava/lang/String;

    move-result-object v18

    aget-object v18, v18, v14

    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap4(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set15(I)I

    .line 287
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get8()[Z

    move-result-object v17

    aget-boolean v17, v17, v14

    if-eqz v17, :cond_0

    .line 288
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get8()[Z

    move-result-object v17

    const/16 v18, 0x0

    aput-boolean v18, v17, v14

    .line 289
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get33()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 290
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get23()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v17, v0

    const/16 v18, 0x65

    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap7(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    .line 301
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get30()[Z

    move-result-object v17

    aget-boolean v17, v17, v14

    if-eqz v17, :cond_1

    .line 302
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get30()[Z

    move-result-object v17

    const/16 v18, 0x0

    aput-boolean v18, v17, v14

    .line 303
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get16()[Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_8

    .line 304
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "IMSI fot slot"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " now ready, resuming PLMN:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 305
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get16()[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v18, v18, v19

    .line 304
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 305
    const-string/jumbo v18, " with ID:"

    .line 304
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 305
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get29()[I

    move-result-object v18

    aget v18, v18, v14

    .line 304
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap11(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    .line 566
    .end local v13    # "simStatus":Ljava/lang/String;
    .end local v14    # "slotId":I
    :cond_1
    :goto_1
    const-string/jumbo v17, "[Receiver]-"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 255
    return-void

    .line 271
    .restart local v13    # "simStatus":Ljava/lang/String;
    .restart local v14    # "slotId":I
    :cond_2
    const-string/jumbo v17, "Null sUiccController"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 272
    return-void

    .line 277
    :cond_3
    const-string/jumbo v17, "Null sIccRecordsInstance"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 278
    return-void

    .line 292
    :cond_4
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get23()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v17, v0

    const/16 v18, 0x64

    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap7(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    goto/16 :goto_0

    .line 295
    :cond_5
    const-string/jumbo v17, "Region unknown"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 297
    :cond_6
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get33()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get33()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 298
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v17, v0

    const/16 v18, 0x64

    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap7(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    goto/16 :goto_0

    .line 308
    :cond_8
    const-string/jumbo v17, "sNwPlmnStrings is Null"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto :goto_1

    .line 312
    :cond_9
    const-string/jumbo v17, "Not major SIM or in maual selection mode"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get11()[Ljava/lang/String;

    move-result-object v18

    aget-object v18, v18, v14

    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap4(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;Ljava/lang/String;)I

    .line 314
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get30()[Z

    move-result-object v17

    aget-boolean v17, v17, v14

    if-eqz v17, :cond_1

    .line 315
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get30()[Z

    move-result-object v17

    const/16 v18, 0x0

    aput-boolean v18, v17, v14

    .line 316
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "IMSI fot slot"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " now ready, resuming with ID:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 317
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get29()[I

    move-result-object v18

    aget v18, v18, v14

    .line 316
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get4()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v17

    aget-object v17, v17, v14

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get29()[I

    move-result-object v18

    aget v18, v18, v14

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 321
    :cond_a
    const-string/jumbo v17, "ABSENT"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 322
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set4(Ljava/lang/String;)Ljava/lang/String;

    .line 323
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get11()[Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, ""

    aput-object v18, v17, v14

    .line 324
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get8()[Z

    move-result-object v17

    const/16 v18, 0x1

    aput-boolean v18, v17, v14

    .line 327
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get30()[Z

    move-result-object v17

    const/16 v18, 0x0

    aput-boolean v18, v17, v14

    .line 328
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get9()[I

    move-result-object v17

    const/16 v18, 0x0

    aput v18, v17, v14

    .line 329
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v17

    move/from16 v0, v17

    if-ne v14, v0, :cond_b

    .line 330
    const-string/jumbo v17, "Major SIM removed, no world phone service"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap10(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    .line 332
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set15(I)I

    .line 333
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set2(I)I

    .line 334
    const/16 v17, -0x63

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set5(I)I

    goto/16 :goto_1

    .line 336
    :cond_b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "SIM"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " is not major SIM"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 339
    :cond_c
    const-string/jumbo v17, "READY"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 340
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "reset sIsInvalidSim by solt:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get13()[Z

    move-result-object v17

    const/16 v18, 0x0

    aput-boolean v18, v17, v14

    goto/16 :goto_1

    .line 343
    .end local v13    # "simStatus":Ljava/lang/String;
    .end local v14    # "slotId":I
    :cond_d
    const-string/jumbo v17, "android.intent.action.SERVICE_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set12(Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 346
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    move-result-object v17

    if-eqz v17, :cond_10

    .line 347
    const-string/jumbo v17, "slot"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 348
    .restart local v14    # "slotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set6(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set16(I)I

    .line 350
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getRilVoiceRegState()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set11(I)I

    .line 351
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set10(I)I

    .line 352
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set1(I)I

    .line 353
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set9(I)I

    .line 354
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set8(I)I

    .line 355
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "slotId: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get9()[I

    move-result-object v18

    aget v18, v18, v14

    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->iccCardTypeToString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 356
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sMajorSim: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 358
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sPlmnSs: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get17()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 359
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sVoiceRegState: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get34()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 360
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sRilVoiceRegState: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get27()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regStateToString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 361
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sRilVoiceRadioTech: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get26()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 362
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sDataRegState: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get5()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 363
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sRilDataRegState: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get25()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regStateToString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 364
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sRilDataRadioTech: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get24()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 365
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sIsAutoSelectEnable: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get12()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 366
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sRadioTechModeForWp: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get22()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v17

    move/from16 v0, v17

    if-ne v14, v0, :cond_1

    .line 371
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get12()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap1(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap5(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    goto/16 :goto_1

    .line 374
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap0(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 375
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get17()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set4(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap10(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    .line 377
    const-string/jumbo v17, "reset sIsInvalidSim"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get13()[Z

    move-result-object v17

    const/16 v18, 0x0

    aput-boolean v18, v17, v14

    goto/16 :goto_1

    .line 381
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap0(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 382
    const-string/jumbo v17, "reset sIsInvalidSim in manual mode"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get17()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set4(Ljava/lang/String;)Ljava/lang/String;

    .line 384
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get13()[Z

    move-result-object v17

    const/16 v18, 0x0

    aput-boolean v18, v17, v14

    goto/16 :goto_1

    .line 389
    .end local v14    # "slotId":I
    :cond_10
    const-string/jumbo v17, "Null sServiceState"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 392
    :cond_11
    const-string/jumbo v17, "android.intent.action.ACTION_SHUTDOWN_IPO"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 394
    const/4 v4, 0x0

    .line 395
    .local v4, "ci":Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v17

    if-nez v17, :cond_12

    .line 396
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get4()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v4, v17, v18

    .line 400
    .local v4, "ci":Lcom/android/internal/telephony/CommandsInterface;
    :goto_2
    if-nez v4, :cond_13

    .line 401
    const-string/jumbo v17, "SHUTDOWN_IPO getActiveCi fail, switch not executed!"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 402
    return-void

    .line 398
    .local v4, "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap2(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    .local v4, "ci":Lcom/android/internal/telephony/CommandsInterface;
    goto :goto_2

    .line 406
    :cond_13
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get6()I

    move-result v17

    const/16 v18, 0x64

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 407
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 408
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 411
    const-string/jumbo v17, "Reload to FDD CSFB modem"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 413
    :cond_14
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 416
    const-string/jumbo v17, "Reload to WG modem"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 418
    :cond_15
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get6()I

    move-result v17

    const/16 v18, 0x65

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 419
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v17

    if-eqz v17, :cond_16

    .line 420
    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 423
    const-string/jumbo v17, "Reload to TDD CSFB modem"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 425
    :cond_16
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 428
    const-string/jumbo v17, "Reload to TG modem"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 431
    .end local v4    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_17
    const-string/jumbo v17, "android.intent.action.ACTION_ADB_SWITCH_MODEM"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 433
    const-string/jumbo v17, "mdType"

    const/16 v18, 0x0

    .line 432
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 434
    .local v16, "toModem":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "toModem: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 435
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_18

    .line 436
    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_19

    .line 439
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->setModemSelectionMode(II)V

    goto/16 :goto_1

    .line 437
    :cond_19
    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_18

    .line 438
    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_18

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->setModemSelectionMode(II)V

    goto/16 :goto_1

    .line 443
    .end local v16    # "toModem":I
    :cond_1a
    const-string/jumbo v17, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 444
    const-string/jumbo v17, "state"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_1b

    .line 445
    const-string/jumbo v17, "Leave flight mode"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 446
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set4(Ljava/lang/String;)Ljava/lang/String;

    .line 447
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get1()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_1

    .line 448
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get13()[Z

    move-result-object v17

    const/16 v18, 0x0

    aput-boolean v18, v17, v9

    .line 447
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 451
    .end local v9    # "i":I
    :cond_1b
    const-string/jumbo v17, "Enter flight mode"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 452
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get1()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_1

    .line 453
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get8()[Z

    move-result-object v17

    const/16 v18, 0x1

    aput-boolean v18, v17, v9

    .line 452
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 456
    .end local v9    # "i":I
    :cond_1c
    const-string/jumbo v17, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 458
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set5(I)I

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap6(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    goto/16 :goto_1

    .line 461
    :cond_1d
    const-string/jumbo v17, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 462
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 463
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set7(I)I

    goto/16 :goto_1

    .line 465
    :cond_1e
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set7(I)I

    goto/16 :goto_1

    .line 467
    :cond_1f
    const-string/jumbo v17, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_23

    .line 468
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v17

    if-eqz v17, :cond_22

    .line 469
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v11

    .line 470
    .local v11, "majorySim":I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v15

    .line 471
    .local v15, "svlteModeSlot":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "majorySim="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " svlteModeSlot="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 472
    const/16 v17, -0x63

    move/from16 v0, v17

    if-eq v11, v0, :cond_21

    .line 473
    if-ne v15, v11, :cond_20

    .line 474
    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set7(I)I

    .line 482
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap6(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    goto/16 :goto_1

    .line 476
    :cond_20
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set7(I)I

    goto :goto_5

    .line 479
    :cond_21
    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set7(I)I

    goto :goto_5

    .line 484
    .end local v11    # "majorySim":I
    .end local v15    # "svlteModeSlot":I
    :cond_22
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set7(I)I

    goto/16 :goto_1

    .line 486
    :cond_23
    const-string/jumbo v17, "android.intent.action.ACTION_TEST_WORLDPHOE"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2c

    .line 487
    const-string/jumbo v17, "FAKE_USER_TYPE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 488
    .local v7, "fakeUserType":I
    const-string/jumbo v17, "EXTRA_FAKE_REGION"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 489
    .local v6, "fakeRegion":I
    const/4 v8, 0x0

    .line 491
    .local v8, "hasChanged":Z
    if-nez v7, :cond_24

    if-nez v6, :cond_24

    .line 492
    const-string/jumbo v17, "Leave ADB Test mode"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 494
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get18()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 495
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get19()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 496
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get20()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 497
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get15()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 498
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8()V

    goto/16 :goto_1

    .line 500
    :cond_24
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set5(I)I

    .line 501
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v17

    const/16 v18, -0x63

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2b

    .line 502
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2b

    .line 504
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get11()[Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v18

    aget-object v10, v17, v18

    .line 505
    .local v10, "imsi":Ljava/lang/String;
    if-eqz v10, :cond_25

    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_27

    .line 522
    :cond_25
    const-string/jumbo v17, "Imsi of sMajorSim is unknown"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 525
    :goto_6
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get16()[Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v5, v17, v18

    .line 526
    .local v5, "currentMcc":Ljava/lang/String;
    if-eqz v5, :cond_26

    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_26

    .line 527
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_28

    .line 528
    :cond_26
    const-string/jumbo v17, "Invalid sNwPlmnStrings"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 545
    .end local v5    # "currentMcc":Ljava/lang/String;
    .end local v10    # "imsi":Ljava/lang/String;
    :goto_7
    if-eqz v8, :cond_1

    .line 546
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sPlmnType1:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get18()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 547
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sPlmnType1Ext:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get19()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 548
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sPlmnType3:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get20()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 549
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sMccDomestic:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get15()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioTechModeSwitch()V

    goto/16 :goto_1

    .line 506
    .restart local v10    # "imsi":Ljava/lang/String;
    :cond_27
    const/16 v17, 0x0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 507
    packed-switch v7, :pswitch_data_0

    .line 519
    :pswitch_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Unknown fakeUserType:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 509
    :pswitch_1
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get18()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    const/4 v8, 0x1

    .line 511
    goto/16 :goto_6

    .line 514
    :pswitch_2
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get20()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    const/4 v8, 0x1

    .line 516
    goto/16 :goto_6

    .line 530
    .restart local v5    # "currentMcc":Ljava/lang/String;
    :cond_28
    const/16 v17, 0x0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 531
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_29

    .line 532
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get15()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    const/4 v8, 0x1

    goto/16 :goto_7

    .line 534
    :cond_29
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_2a

    .line 535
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get15()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 536
    const/4 v8, 0x1

    goto/16 :goto_7

    .line 538
    :cond_2a
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Unknown fakeRegion:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 542
    .end local v5    # "currentMcc":Ljava/lang/String;
    .end local v10    # "imsi":Ljava/lang/String;
    :cond_2b
    const-string/jumbo v17, "sMajorSim is Unknown or Capability OFF"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 554
    .end local v6    # "fakeRegion":I
    .end local v7    # "fakeUserType":I
    .end local v8    # "hasChanged":Z
    :cond_2c
    const-string/jumbo v17, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 555
    const-string/jumbo v17, "android.bluetooth.profile.extra.STATE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 556
    .local v12, "sapState":I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v12, v0, :cond_2d

    .line 557
    const-string/jumbo v17, "BT_SAP connection state is CONNECTED"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 558
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set0(I)I

    goto/16 :goto_1

    .line 559
    :cond_2d
    if-nez v12, :cond_2e

    .line 560
    const-string/jumbo v17, "BT_SAP connection state is DISCONNECTED"

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 561
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set0(I)I

    goto/16 :goto_1

    .line 563
    :cond_2e
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "BT_SAP connection state is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
