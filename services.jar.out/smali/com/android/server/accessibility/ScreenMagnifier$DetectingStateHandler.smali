.class final Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DetectingStateHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;
    }
.end annotation


# static fields
.field private static final ACTION_TAP_COUNT:I = 0x3

.field private static final MESSAGE_ON_ACTION_TAP_AND_HOLD:I = 0x1

.field private static final MESSAGE_TRANSITION_TO_DELEGATING_STATE:I = 0x2


# instance fields
.field private mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mLastDownEvent:Landroid/view/MotionEvent;

.field private mLastTapUpEvent:Landroid/view/MotionEvent;

.field private mTapCount:I

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "down"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->onActionTapAndHold(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->sendDelayedMotionEvents()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    .line 640
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/ScreenMagnifier;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;)V

    return-void
.end method

.method private cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 785
    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v0

    .line 787
    .local v0, "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    if-nez v2, :cond_0

    .line 788
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 784
    :goto_0
    return-void

    .line 790
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 791
    .local v1, "tail":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    :goto_1
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->-get0(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 792
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->-get0(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v1

    goto :goto_1

    .line 794
    :cond_1
    invoke-static {v1, v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->-set0(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    goto :goto_0
.end method

.method private clearDelayedMotionEvents()V
    .locals 2

    .prologue
    .line 830
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    if-eqz v1, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 832
    .local v0, "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->-get0(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 833
    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->recycle()V

    goto :goto_0

    .line 829
    .end local v0    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    :cond_0
    return-void
.end method

.method private clearLastDownEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 777
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 779
    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    .line 776
    :cond_0
    return-void
.end method

.method private clearLastTapUpEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 770
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 772
    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    .line 769
    :cond_0
    return-void
.end method

.method private clearTapDetectionState()V
    .locals 1

    .prologue
    .line 764
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    .line 765
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastTapUpEvent()V

    .line 766
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastDownEvent()V

    .line 763
    return-void
.end method

.method private obtainEventWithOffsetTimeAndDownTime(Landroid/view/MotionEvent;J)Landroid/view/MotionEvent;
    .locals 20
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "offset"    # J

    .prologue
    .line 813
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 814
    .local v7, "pointerCount":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v6, v7}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap0(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 815
    .local v9, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v6, v7}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap1(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    .line 816
    .local v8, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v7, :cond_0

    .line 817
    aget-object v6, v9, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 818
    aget-object v6, v8, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 816
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 820
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    add-long v2, v10, p2

    .line 821
    .local v2, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    add-long v4, v10, p2

    .line 823
    .local v4, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 824
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    .line 825
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    .line 826
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    .line 825
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    .line 822
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v6

    return-object v6
.end method

.method private onActionTap(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "up"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v4, 0x1

    .line 847
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap3(Lcom/android/server/accessibility/ScreenMagnifier;)F

    move-result v1

    .line 849
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 848
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    .line 843
    :goto_0
    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    goto :goto_0
.end method

.method private onActionTapAndHold(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "down"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    .line 860
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-set0(Lcom/android/server/accessibility/ScreenMagnifier;Z)Z

    .line 861
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap3(Lcom/android/server/accessibility/ScreenMagnifier;)F

    move-result v1

    .line 862
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x1

    .line 861
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    .line 863
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap9(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    .line 855
    return-void
.end method

.method private sendDelayedMotionEvents()V
    .locals 10

    .prologue
    .line 799
    :goto_0
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    if-eqz v5, :cond_0

    .line 800
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 801
    .local v1, "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->-get0(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 802
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mCachedTimeMillis:J

    sub-long v2, v6, v8

    .line 803
    .local v2, "offset":J
    iget-object v5, v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->obtainEventWithOffsetTimeAndDownTime(Landroid/view/MotionEvent;J)Landroid/view/MotionEvent;

    move-result-object v0

    .line 804
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v5, v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->obtainEventWithOffsetTimeAndDownTime(Landroid/view/MotionEvent;J)Landroid/view/MotionEvent;

    move-result-object v4

    .line 805
    .local v4, "rawEvent":Landroid/view/MotionEvent;
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    iget v6, v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mPolicyFlags:I

    invoke-virtual {v5, v0, v4, v6}, Lcom/android/server/accessibility/ScreenMagnifier;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 806
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 807
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 808
    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->recycle()V

    goto :goto_0

    .line 798
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v1    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .end local v2    # "offset":J
    .end local v4    # "rawEvent":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method private transitionToDelegatingStateAndClear()V
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap9(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    .line 839
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->sendDelayedMotionEvents()V

    .line 840
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    .line 837
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 758
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 759
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearTapDetectionState()V

    .line 760
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearDelayedMotionEvents()V

    .line 756
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 677
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 678
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 679
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 676
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 681
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 682
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->-get4(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    .line 683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    .line 682
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 684
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    .line 685
    return-void

    .line 687
    :cond_1
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    if-ne v4, v8, :cond_3

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_3

    .line 688
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    .line 689
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->-get6(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->-get5(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v6

    .line 688
    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v4

    .line 687
    if-eqz v4, :cond_3

    .line 690
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9, p3, v7, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 692
    .local v1, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    .line 693
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v6, v5

    .line 692
    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 699
    .end local v1    # "message":Landroid/os/Message;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastDownEvent()V

    .line 700
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 694
    :cond_3
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    if-ge v4, v10, :cond_2

    .line 695
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 697
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->-get6(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 703
    .end local v1    # "message":Landroid/os/Message;
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 704
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap9(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    .line 705
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    goto/16 :goto_0

    .line 707
    :cond_4
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_0

    .line 711
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    if-ge v4, v8, :cond_0

    .line 712
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-static {v4, p1, v7}, Lcom/android/server/accessibility/GestureUtils;->computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D

    move-result-wide v2

    .line 714
    .local v2, "distance":D
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->-get8(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v6

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 715
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_0

    .line 720
    .end local v2    # "distance":D
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-nez v4, :cond_5

    .line 721
    return-void

    .line 723
    :cond_5
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 724
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->-get4(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_6

    .line 725
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    .line 726
    return-void

    .line 728
    :cond_6
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->-get9(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v5

    .line 729
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->-get8(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v6

    .line 728
    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v4

    if-nez v4, :cond_7

    .line 730
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    .line 731
    return-void

    .line 733
    :cond_7
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    .line 734
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->-get6(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->-get5(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v6

    .line 733
    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 738
    :cond_8
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    .line 742
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    if-ne v4, v10, :cond_a

    .line 743
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    .line 744
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->onActionTap(Landroid/view/MotionEvent;I)V

    .line 745
    return-void

    .line 735
    :cond_9
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    .line 736
    return-void

    .line 747
    :cond_a
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastTapUpEvent()V

    .line 748
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 679
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
