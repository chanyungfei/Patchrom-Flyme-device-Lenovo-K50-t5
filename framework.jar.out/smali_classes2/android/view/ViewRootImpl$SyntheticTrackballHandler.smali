.class final Landroid/view/ViewRootImpl$SyntheticTrackballHandler;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTrackballHandler"
.end annotation


# instance fields
.field private mLastTime:J

.field private final mX:Landroid/view/ViewRootImpl$TrackballAxis;

.field private final mY:Landroid/view/ViewRootImpl$TrackballAxis;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 4842
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4843
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 4844
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 4842
    return-void
.end method


# virtual methods
.method public cancel(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4950
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 4955
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_0

    .line 4956
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 4949
    :cond_0
    return-void
.end method

.method public process(Landroid/view/MotionEvent;)V
    .locals 31
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4849
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4850
    .local v4, "curTime":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    const-wide/16 v12, 0xfa

    add-long/2addr v6, v12

    cmp-long v3, v6, v4

    if-gez v3, :cond_0

    .line 4853
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 4854
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 4855
    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 4858
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    .line 4859
    .local v27, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    .line 4860
    .local v11, "metaState":I
    packed-switch v27, :pswitch_data_0

    .line 4879
    :goto_0
    invoke-static {}, Landroid/view/ViewRootImpl;->-get9()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ViewRootImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TB X="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v7, v7, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " step="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4880
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v7, v7, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 4879
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4880
    const-string/jumbo v7, " dir="

    .line 4879
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4880
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v7, v7, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 4879
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4880
    const-string/jumbo v7, " acc="

    .line 4879
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4880
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v7, v7, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4879
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4881
    const-string/jumbo v7, " move="

    .line 4879
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4881
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 4879
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4882
    const-string/jumbo v7, " / Y="

    .line 4879
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4882
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v7, v7, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4879
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4882
    const-string/jumbo v7, " step="

    .line 4879
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4883
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v7, v7, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 4879
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4883
    const-string/jumbo v7, " dir="

    .line 4879
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4883
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v7, v7, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 4879
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4883
    const-string/jumbo v7, " acc="

    .line 4879
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4883
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v7, v7, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4879
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4884
    const-string/jumbo v7, " move="

    .line 4879
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4884
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 4879
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4885
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    const-string/jumbo v7, "X"

    invoke-virtual {v3, v6, v12, v13, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v29

    .line 4886
    .local v29, "xOff":F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    const-string/jumbo v7, "Y"

    invoke-virtual {v3, v6, v12, v13, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v30

    .line 4894
    .local v30, "yOff":F
    const/4 v9, 0x0

    .line 4895
    .local v9, "keycode":I
    const/16 v28, 0x0

    .line 4896
    .local v28, "movement":I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 4897
    .local v2, "accel":F
    cmpl-float v3, v29, v30

    if-lez v3, :cond_9

    .line 4898
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v28

    .line 4899
    if-eqz v28, :cond_2

    .line 4900
    if-lez v28, :cond_8

    const/16 v9, 0x16

    .line 4902
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v2, v3, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4903
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 4915
    :cond_2
    :goto_2
    if-eqz v9, :cond_c

    .line 4916
    if-gez v28, :cond_3

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    .line 4917
    :cond_3
    move/from16 v0, v28

    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v0, v3

    move/from16 v26, v0

    .line 4918
    .local v26, "accelMovement":I
    invoke-static {}, Landroid/view/ViewRootImpl;->-get9()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "ViewRootImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Move: movement="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4919
    const-string/jumbo v7, " accelMovement="

    .line 4918
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4920
    const-string/jumbo v7, " accel="

    .line 4918
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4921
    :cond_4
    move/from16 v0, v26

    move/from16 v1, v28

    if-le v0, v1, :cond_6

    .line 4922
    invoke-static {}, Landroid/view/ViewRootImpl;->-get9()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "ViewRootImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Delivering fake DPAD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4924
    :cond_5
    add-int/lit8 v28, v28, -0x1

    .line 4925
    sub-int v10, v26, v28

    .line 4926
    .local v10, "repeatCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    new-instance v3, Landroid/view/KeyEvent;

    .line 4927
    const/4 v8, 0x2

    .line 4928
    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    .line 4929
    const/16 v15, 0x101

    move-wide v6, v4

    .line 4926
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 4931
    .end local v10    # "repeatCount":I
    :cond_6
    :goto_3
    if-lez v28, :cond_b

    .line 4932
    invoke-static {}, Landroid/view/ViewRootImpl;->-get9()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "ViewRootImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Delivering fake DPAD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4934
    :cond_7
    add-int/lit8 v28, v28, -0x1

    .line 4935
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4936
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v13, Landroid/view/KeyEvent;

    .line 4937
    const/16 v18, 0x0

    const/16 v20, 0x0

    .line 4938
    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x400

    .line 4939
    const/16 v25, 0x101

    move-wide v14, v4

    move-wide/from16 v16, v4

    move/from16 v19, v9

    move/from16 v21, v11

    .line 4936
    invoke-direct/range {v13 .. v25}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v3, v13}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 4940
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v13, Landroid/view/KeyEvent;

    .line 4941
    const/16 v18, 0x1

    const/16 v20, 0x0

    .line 4942
    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x400

    .line 4943
    const/16 v25, 0x101

    move-wide v14, v4

    move-wide/from16 v16, v4

    move/from16 v19, v9

    move/from16 v21, v11

    .line 4940
    invoke-direct/range {v13 .. v25}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v3, v13}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto :goto_3

    .line 4862
    .end local v2    # "accel":F
    .end local v9    # "keycode":I
    .end local v26    # "accelMovement":I
    .end local v28    # "movement":I
    .end local v29    # "xOff":F
    .end local v30    # "yOff":F
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 4863
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 4864
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    new-instance v3, Landroid/view/KeyEvent;

    .line 4865
    const/4 v8, 0x0

    const/16 v9, 0x17

    const/4 v10, 0x0

    .line 4866
    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    .line 4867
    const/16 v15, 0x101

    move-wide v6, v4

    .line 4864
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto/16 :goto_0

    .line 4870
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 4871
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 4872
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    new-instance v3, Landroid/view/KeyEvent;

    .line 4873
    const/4 v8, 0x1

    const/16 v9, 0x17

    const/4 v10, 0x0

    .line 4874
    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    .line 4875
    const/16 v15, 0x101

    move-wide v6, v4

    .line 4872
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto/16 :goto_0

    .line 4901
    .restart local v2    # "accel":F
    .restart local v9    # "keycode":I
    .restart local v28    # "movement":I
    .restart local v29    # "xOff":F
    .restart local v30    # "yOff":F
    :cond_8
    const/16 v9, 0x15

    goto/16 :goto_1

    .line 4905
    :cond_9
    const/4 v3, 0x0

    cmpl-float v3, v30, v3

    if-lez v3, :cond_2

    .line 4906
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v28

    .line 4907
    if-eqz v28, :cond_2

    .line 4908
    if-lez v28, :cond_a

    const/16 v9, 0x14

    .line 4910
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v2, v3, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4911
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    goto/16 :goto_2

    .line 4909
    :cond_a
    const/16 v9, 0x13

    goto :goto_4

    .line 4945
    .restart local v26    # "accelMovement":I
    :cond_b
    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 4847
    .end local v26    # "accelMovement":I
    :cond_c
    return-void

    .line 4860
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
