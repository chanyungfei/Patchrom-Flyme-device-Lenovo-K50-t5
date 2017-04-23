.class Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;
.super Lcom/android/internal/util/State;
.source "DcController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DccDefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcController;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcController;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcController;Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcController;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DcController;)V

    return-void
.end method

.method private onDataStateChanged(Ljava/util/ArrayList;Z)V
    .locals 29
    .param p2, "isRecordLoaded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataCallResponse;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "dcsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "onDataStateChanged: dcsList="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 263
    const-string/jumbo v28, " mDcListActiveByCid="

    .line 262
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcController;->-get0(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;

    move-result-object v28

    .line 262
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcController;Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    const-string/jumbo v27, "onDataStateChanged: updateDcInfo"

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcController;Ljava/util/ArrayList;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcController;Ljava/util/ArrayList;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    const-string/jumbo v27, "onDataStateChanged: pre-check state return for CDMA."

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 277
    return-void

    .line 283
    :cond_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 284
    .local v9, "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "dcs$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .line 285
    .local v12, "dcs":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget v0, v12, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v9, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 290
    .end local v12    # "dcs":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v14, "dcsToRetry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/DcController;->-get0(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "dc$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 292
    .local v10, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    iget v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-nez v26, :cond_2

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "onDataStateChanged: add to retry dc="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 297
    .end local v10    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "onDataStateChanged: dcsToRetry="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 301
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v7, "apnsToCleanup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    const/16 v17, 0x0

    .line 304
    .local v17, "isAnyDataCallDormant":Z
    const/16 v16, 0x0

    .line 306
    .local v16, "isAnyDataCallActive":Z
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "newState$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_15

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .line 308
    .local v21, "newState":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/DcController;->-get0(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;

    move-result-object v26

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 309
    .restart local v10    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    if-nez v10, :cond_5

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    const-string/jumbo v27, "onDataStateChanged: no associated DC yet, ignore"

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->loge(Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    const-string/jumbo v27, "Deactivate unlinked PDP context."

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->loge(Ljava/lang/String;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v26

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->deactivatePdpByCid(I)V

    goto :goto_2

    .line 321
    :cond_5
    iget-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    if-nez v26, :cond_8

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    const-string/jumbo v27, "onDataStateChanged: no connected apns, ignore"

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->loge(Ljava/lang/String;)V

    .line 415
    :cond_6
    :goto_3
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 416
    const/16 v16, 0x1

    .line 418
    :cond_7
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 419
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 326
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "onDataStateChanged: Found ConnId="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 327
    const-string/jumbo v28, " newState="

    .line 326
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 327
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->toString()Ljava/lang/String;

    move-result-object v28

    .line 326
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    move/from16 v26, v0

    if-nez v26, :cond_c

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    sget-boolean v26, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsCleanupRequired:Z

    if-eqz v26, :cond_9

    .line 330
    iget-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/16 v26, 0x0

    sput-boolean v26, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsCleanupRequired:Z

    goto :goto_3

    .line 333
    :cond_9
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v15

    .line 334
    .local v15, "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "onDataStateChanged: inactive failCause="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v15}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    move-result v26

    if-eqz v26, :cond_a

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    const-string/jumbo v27, "onDataStateChanged: X restart radio"

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendRestartRadio()V

    goto/16 :goto_3

    .line 338
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    const-string/jumbo v27, "onDataStateChanged: inactive, add to cleanup list"

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 340
    iget-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 342
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    const-string/jumbo v27, "onDataStateChanged: inactive, add to retry list"

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 348
    .end local v15    # "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    :cond_c
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkProperty(Lcom/android/internal/telephony/dataconnection/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    move-result-object v25

    .line 349
    .local v25, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    const-string/jumbo v27, "onDataStateChanged: no change"

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 352
    :cond_d
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 353
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 354
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/net/LinkProperties;->isIdenticalRoutes(Landroid/net/LinkProperties;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 355
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/net/LinkProperties;->isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v28}, Lcom/android/internal/telephony/dataconnection/DcController;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcController;Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    const-string/jumbo v27, "onDataStateChanged: no changes"

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 360
    :cond_e
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v8

    .line 362
    .local v8, "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "onDataStateChanged: oldLp="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 363
    const-string/jumbo v28, " newLp="

    .line 362
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 363
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v28, v0

    .line 362
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 363
    const-string/jumbo v28, " car="

    .line 362
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 365
    const/16 v19, 0x0

    .line 366
    .local v19, "needToClean":Z
    iget-object v0, v8, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "added$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 367
    .local v3, "added":Landroid/net/LinkAddress;
    iget-object v0, v8, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "removed$iterator":Ljava/util/Iterator;
    :cond_10
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_f

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/LinkAddress;

    .line 369
    .local v23, "removed":Landroid/net/LinkAddress;
    invoke-virtual/range {v23 .. v23}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v26

    .line 370
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v27

    .line 368
    invoke-static/range {v26 .. v27}, Landroid/net/NetworkUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    const-string/jumbo v27, "[IRAT_DcController] Don\'t set cleanup flag."

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v26

    if-eqz v26, :cond_11

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v26

    if-nez v26, :cond_f

    .line 376
    :cond_11
    const/16 v19, 0x1

    goto :goto_4

    .line 382
    .end local v3    # "added":Landroid/net/LinkAddress;
    .end local v23    # "removed":Landroid/net/LinkAddress;
    .end local v24    # "removed$iterator":Ljava/util/Iterator;
    :cond_12
    if-eqz v19, :cond_13

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "onDataStateChanged: addr change, cleanup apns="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 385
    iget-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v28, v0

    .line 384
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 386
    const-string/jumbo v28, " oldLp="

    .line 384
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 386
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v28, v0

    .line 384
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 387
    const-string/jumbo v28, " newLp="

    .line 384
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 387
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v28, v0

    .line 384
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 389
    iget-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 391
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    const-string/jumbo v27, "onDataStateChanged: simple change"

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 393
    iget-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "apnContext$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 394
    .local v5, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v26

    .line 395
    const-string/jumbo v27, "linkPropertiesChanged"

    .line 396
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v28

    .line 394
    invoke-virtual/range {v26 .. v28}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 405
    .end local v4    # "added$iterator":Ljava/util/Iterator;
    .end local v5    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v6    # "apnContext$iterator":Ljava/util/Iterator;
    .end local v8    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v19    # "needToClean":Z
    :cond_14
    iget-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "onDataStateChanged: interface change, cleanup apns="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 408
    iget-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v28, v0

    .line 407
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 423
    .end local v10    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v21    # "newState":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    .end local v25    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mOverallDataConnectionActiveState:I

    move/from16 v20, v0

    .line 425
    .local v20, "newOverallDataConnectionActiveState":I
    if-eqz v17, :cond_16

    if-eqz v16, :cond_17

    .line 439
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "onDataStateChanged: Data Activity updated to NONE. isAnyDataCallActive = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 443
    const-string/jumbo v28, " isAnyDataCallDormant = "

    .line 441
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 445
    if-eqz v16, :cond_18

    .line 446
    const/16 v20, 0x2

    .line 477
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "onDataStateChanged: dcsToRetry="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 478
    const-string/jumbo v28, " apnsToCleanup="

    .line 477
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcController;Ljava/lang/String;)V

    .line 482
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "apnContext$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 483
    .restart local v5    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_7

    .line 432
    .end local v5    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v6    # "apnContext$iterator":Ljava/util/Iterator;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    const-string/jumbo v27, "onDataStateChanged: Data Activity updated to DORMANT. stopNetStatePoll"

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    .line 435
    const/16 v20, 0x1

    .line 425
    goto :goto_6

    .line 449
    :cond_18
    const/16 v20, 0x0

    goto :goto_6

    .line 486
    .restart local v6    # "apnContext$iterator":Ljava/util/Iterator;
    :cond_19
    if-eqz p2, :cond_1a

    const/16 v18, 0x1

    .line 488
    .local v18, "isLoaded":I
    :goto_8
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 490
    .restart local v10    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "onDataStateChanged: send EVENT_LOST_CONNECTION dc.mTag="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 491
    iget v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v28, v0

    .line 490
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 491
    const-string/jumbo v28, "isLoaded:"

    .line 490
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 493
    iget v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v26, v0

    const v27, 0x40009

    move/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v18

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(III)V

    goto :goto_9

    .line 486
    .end local v10    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v18    # "isLoaded":I
    :cond_1a
    const/16 v18, 0x0

    .restart local v18    # "isLoaded":I
    goto :goto_8

    .line 497
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v26, v0

    const-string/jumbo v27, "onDataStateChanged: X"

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 260
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 195
    const v2, 0x40005

    .line 194
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 197
    const v2, 0x40007

    .line 196
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 198
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 200
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DcController;Landroid/os/Handler;)V

    .line 199
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->-set0(Lcom/android/internal/telephony/dataconnection/DcController;Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    .line 193
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get1(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get1(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->dispose()V

    .line 205
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 219
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 252
    :goto_0
    return v4

    .line 221
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 222
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DccDefaultState: msg.what=EVENT_RIL_CONNECTED mRilVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 225
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    const-string/jumbo v2, "DccDefaultState: Unexpected exception on EVENT_RIL_CONNECTED"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 234
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 235
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->onDataStateChanged(Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    const-string/jumbo v2, "DccDefaultState: EVENT_DATA_STATE_CHANGED: exception; likely radio not available, ignore"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 243
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 244
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->onDataStateChanged(Ljava/util/ArrayList;Z)V

    .line 249
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    const v3, 0x421f8

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    const-string/jumbo v2, "DccDefaultState: EVENT_DATA_STATE_CHANGED: exception; likely radio not available, ignore"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 219
    nop

    :sswitch_data_0
    .sparse-switch
        0x40005 -> :sswitch_0
        0x40007 -> :sswitch_1
        0x4000f -> :sswitch_2
    .end sparse-switch
.end method
