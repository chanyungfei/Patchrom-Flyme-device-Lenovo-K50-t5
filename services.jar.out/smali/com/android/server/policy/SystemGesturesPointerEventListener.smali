.class public Lcom/android/server/policy/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final SWIPE_FROM_BOTTOM:I = 0x2

.field private static final SWIPE_FROM_RIGHT:I = 0x3

.field private static final SWIPE_FROM_TOP:I = 0x1

.field private static final SWIPE_NONE:I = 0x0

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SystemGestures"

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private final mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

.field private mDebugFireable:Z

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private final mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private final mSwipeStartThreshold:I

.field screenHeight:I

.field screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    .prologue
    const/16 v1, 0x20

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 48
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    .line 49
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    .line 50
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 59
    const-string/jumbo v0, "callbacks"

    invoke-static {v0, p2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    .line 60
    const-string/jumbo v0, "context"

    invoke-static {v0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    const v1, 0x1050017

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 62
    iget v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iput v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 58
    return-void
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 122
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 123
    .local v1, "pointerId":I
    invoke-direct {p0, v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v0

    .line 126
    .local v0, "i":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v0

    .line 128
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v0

    .line 129
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 121
    :cond_0
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    return-object p1
.end method

.method private detectSwipe(IJFF)I
    .locals 10
    .param p1, "i"    # I
    .param p2, "time"    # J
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 175
    const-string/jumbo v8, "sys.single_handle_y"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 176
    .local v6, "singleHandHeight":I
    const-string/jumbo v8, "sys.globalsinglehand.enable"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "enable":Ljava/lang/String;
    const/4 v5, 0x0

    .line 179
    .local v5, "scale":F
    iget-object v8, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    aget v3, v8, p1

    .line 180
    .local v3, "fromX":F
    iget-object v8, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    aget v4, v8, p1

    .line 181
    .local v4, "fromY":F
    iget-object v8, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    aget-wide v8, v8, p1

    sub-long v0, p2, v8

    .line 185
    .local v0, "elapsed":J
    const-string/jumbo v8, "1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-lez v6, :cond_0

    .line 186
    int-to-float v8, v6

    const/high16 v9, 0x44f00000    # 1920.0f

    div-float v5, v9, v8

    .line 187
    rsub-int v7, v6, 0x780

    .line 190
    .local v7, "singleHandY":I
    int-to-float v8, v7

    sub-float v8, v4, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x43160000    # 150.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    sub-float v8, p5, v4

    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 191
    const-wide/16 v8, 0x1f4

    cmp-long v8, v0, v8

    if-gez v8, :cond_0

    .line 192
    const/4 v8, 0x1

    return v8

    .line 196
    .end local v7    # "singleHandY":I
    :cond_0
    iget v8, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_1

    .line 197
    iget v8, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    cmpl-float v8, p5, v8

    if-lez v8, :cond_1

    .line 198
    const-wide/16 v8, 0x1f4

    cmp-long v8, v0, v8

    if-gez v8, :cond_1

    .line 199
    const/4 v8, 0x1

    return v8

    .line 201
    :cond_1
    iget v8, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v8, v4, v8

    if-ltz v8, :cond_2

    .line 202
    iget v8, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v8, v8

    sub-float v8, v4, v8

    cmpg-float v8, p5, v8

    if-gez v8, :cond_2

    .line 203
    const-wide/16 v8, 0x1f4

    cmp-long v8, v0, v8

    if-gez v8, :cond_2

    .line 204
    const/4 v8, 0x2

    return v8

    .line 206
    :cond_2
    iget v8, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v8, v3, v8

    if-ltz v8, :cond_3

    .line 207
    iget v8, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v8, v8

    sub-float v8, v3, v8

    cmpg-float v8, p4, v8

    if-gez v8, :cond_3

    .line 208
    const-wide/16 v8, 0x1f4

    cmp-long v8, v0, v8

    if-gez v8, :cond_3

    .line 209
    const/4 v8, 0x3

    return v8

    .line 211
    :cond_3
    const/4 v8, 0x0

    return v8
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .locals 20
    .param p1, "move"    # Landroid/view/MotionEvent;

    .prologue
    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v15

    .line 150
    .local v15, "historySize":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    .line 151
    .local v17, "pointerCount":I
    const/16 v16, 0x0

    .local v16, "p":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 152
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    .line 153
    .local v18, "pointerId":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v3

    .line 154
    .local v3, "i":I
    const/4 v2, -0x1

    if-eq v3, v2, :cond_2

    .line 155
    const/4 v14, 0x0

    .local v14, "h":I
    :goto_1
    if-ge v14, v15, :cond_1

    .line 156
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    .line 157
    .local v4, "time":J
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    .line 158
    .local v6, "x":F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v7

    .local v7, "y":F
    move-object/from16 v2, p0

    .line 159
    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v19

    .line 160
    .local v19, "swipe":I
    if-eqz v19, :cond_0

    .line 161
    return v19

    .line 155
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 164
    .end local v4    # "time":J
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v19    # "swipe":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    invoke-direct/range {v8 .. v13}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v19

    .line 165
    .restart local v19    # "swipe":I
    if-eqz v19, :cond_2

    .line 166
    return v19

    .line 151
    .end local v14    # "h":I
    .end local v19    # "swipe":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 170
    .end local v3    # "i":I
    .end local v18    # "pointerId":I
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method private findIndex(I)I
    .locals 4
    .param p1, "pointerId"    # I

    .prologue
    const/4 v3, -0x1

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 138
    return v0

    .line 136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    if-ne p1, v3, :cond_3

    .line 142
    :cond_2
    return v3

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    iget v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v1, v2

    .line 145
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v1, v1, -0x1

    return v1
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 75
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 78
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 80
    iput v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 81
    invoke-direct {p0, p1, v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 82
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onDown()V

    goto :goto_0

    .line 85
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 86
    iget-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 88
    iget-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 87
    goto :goto_1

    .line 95
    :pswitch_3
    iget-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v3, :cond_0

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result v0

    .line 97
    .local v0, "swipe":I
    if-nez v0, :cond_2

    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 98
    if-ne v0, v1, :cond_3

    .line 100
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    goto :goto_0

    .line 101
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 103
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    goto :goto_0

    .line 104
    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    goto :goto_0

    .line 112
    .end local v0    # "swipe":I
    :pswitch_4
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 113
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 114
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onUpOrCancel()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
