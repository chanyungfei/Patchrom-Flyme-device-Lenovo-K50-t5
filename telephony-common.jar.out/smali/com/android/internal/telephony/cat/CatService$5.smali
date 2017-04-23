.class Lcom/android/internal/telephony/cat/CatService$5;
.super Landroid/content/BroadcastReceiver;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 2361
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2367
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 2368
    .local v5, "action":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "CatServiceReceiver action: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2370
    const-string/jumbo v17, "android.intent.action.ACTION_SHUTDOWN_IPO"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 2371
    const-string/jumbo v17, "remove event list because of ipo shutdown"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatService;->-set3(Lcom/android/internal/telephony/cat/CatService;[B)[B

    .line 2373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 2397
    :cond_0
    :goto_0
    const-string/jumbo v17, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 2398
    const-string/jumbo v17, "slot"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 2399
    .local v7, "id":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "SIM state change, id: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", simId: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->-get7(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatService;->-get7(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v17

    move/from16 v0, v17

    if-ne v7, v0, :cond_9

    .line 2401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    const-string/jumbo v18, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatService;->-set7(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)Ljava/lang/String;

    .line 2402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lcom/android/internal/telephony/cat/CatService;->-set6(Lcom/android/internal/telephony/cat/CatService;I)I

    .line 2403
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "simIdfromIntent["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->-get8(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "],simState["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->-get9(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2404
    const-string/jumbo v17, "ABSENT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->-get9(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2405
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->-get7(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2406
    const-string/jumbo v17, "Igonre absent sim state"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2407
    return-void

    .line 2374
    .end local v7    # "id":I
    :cond_1
    const-string/jumbo v17, "mediatek.intent.action.IVSR_NOTIFY"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatService;->-get7(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v17

    const-string/jumbo v18, "slot"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 2376
    return-void

    .line 2379
    :cond_2
    const-string/jumbo v17, "action"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2380
    .local v8, "ivsrAction":Ljava/lang/String;
    const-string/jumbo v17, "start"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2381
    const-string/jumbo v17, "[IVSR set IVSR flag"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatService;->-set1(Lcom/android/internal/telephony/cat/CatService;Z)Z

    .line 2383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    const-wide/32 v18, 0xea60

    const/16 v20, 0xe

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/CatService;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2385
    .end local v8    # "ivsrAction":Ljava/lang/String;
    :cond_3
    const-string/jumbo v17, "com.android.phone.ACTION_SIM_RECOVERY_DONE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    const-string/jumbo v17, "android.intent.action.ACTION_MD_TYPE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2387
    :cond_4
    const-string/jumbo v17, "com.android.phone.ACTION_SIM_RECOVERY_DONE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2388
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "[Set SIM Recovery flag, sim: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->-get7(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", isDisplayTextDisabled: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatService;->-get0(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2392
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x7530

    const/16 v20, 0xf

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(IJ)V

    .line 2393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatService;->-set0(Lcom/android/internal/telephony/cat/CatService;Z)Z

    goto/16 :goto_0

    .line 2388
    :cond_5
    const/16 v17, 0x0

    goto :goto_1

    .line 2390
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "[World phone flag: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->-get7(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", isDisplayTextDisabled: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatService;->-get0(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/16 v17, 0x0

    goto :goto_3

    .line 2409
    .restart local v7    # "id":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lcom/android/internal/telephony/cat/CatService;->-wrap4(Lcom/android/internal/telephony/cat/CatService;I)V

    .line 2410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 2412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->-get7(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/cat/CatService;->-wrap5(Lcom/android/internal/telephony/cat/CatService;I)V

    .line 2366
    .end local v7    # "id":I
    :cond_9
    :goto_4
    return-void

    .line 2416
    :cond_a
    const-string/jumbo v17, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 2417
    const-string/jumbo v17, "slot"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2418
    .local v4, "SIMID":I
    const-string/jumbo v17, "phoneName"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2419
    .local v10, "newType":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "GSM/CDMA changes, instant sim id: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->-get7(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", sim id: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", new type: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatService;->-get7(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v17

    move/from16 v0, v17

    if-ne v4, v0, :cond_9

    const-string/jumbo v17, "CDMA"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    goto/16 :goto_4

    .line 2424
    .end local v4    # "SIMID":I
    .end local v10    # "newType":Ljava/lang/String;
    :cond_b
    const-string/jumbo v17, "com.mediatek.intent.action.FINISH_SWITCH_ROAMING_MODE"

    .line 2425
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    .line 2424
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2426
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "IR_STATE_CHANGED:  simId: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->-get7(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2427
    const-string/jumbo v17, "subscription"

    .line 2428
    const/16 v18, -0x1

    .line 2427
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 2429
    .local v15, "subId":I
    invoke-static {v15}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatService;->-get7(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    .line 2430
    const-string/jumbo v17, "Ignore switch roaming mode intent."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2431
    return-void

    .line 2433
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatService;->-get7(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v16

    .line 2434
    .local v16, "sub_Id":[I
    const/16 v17, 0x0

    aget v17, v16, v17

    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v12

    .line 2435
    .local v12, "phoneId":I
    invoke-static {v12}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    .line 2436
    .local v11, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v11, :cond_d

    .line 2437
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "phone is null.subId: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, v16, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", phoneId: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2438
    return-void

    .line 2440
    :cond_d
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/IccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v6

    .line 2441
    .local v6, "cardType":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "cardType: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", phoneId: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2442
    const-string/jumbo v17, "RUIM"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_e

    const-string/jumbo v17, "CSIM"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2444
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatService;->-get7(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    check-cast v9, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 2445
    .local v9, "lLteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    if-nez v9, :cond_f

    .line 2446
    const-string/jumbo v17, "lLteDcPhoneProxy is null."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2447
    return-void

    .line 2449
    :cond_f
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v13

    .line 2450
    .local v13, "sLteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    const/4 v14, 0x0

    .line 2451
    .local v14, "sRoamingMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    if-eqz v13, :cond_10

    .line 2452
    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v14

    .line 2454
    .end local v14    # "sRoamingMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    :cond_10
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sRoamingMode: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2456
    sget-object v17, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-object/from16 v0, v17

    if-ne v0, v14, :cond_11

    .line 2457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatService;->queryStkSetUpMenuFromMD()V

    goto/16 :goto_4

    .line 2459
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/android/internal/telephony/cat/CatService;->-wrap2(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_4
.end method
