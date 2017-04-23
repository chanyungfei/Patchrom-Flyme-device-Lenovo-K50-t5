.class public final Lcom/android/server/display/autobrightness/RampAnimatorLenovo;
.super Ljava/lang/Object;
.source "RampAnimatorLenovo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;,
        Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DELTA_FAST:I = 0x1

.field private static final DELTA_SLOW:I = 0x1

.field private static final FADE_ON_INTERVAL:J = 0x32L

.field private static final FAST_ON_INTERVAL:J = 0x5L

.field private static final MS_TO_NS:J = 0xf4240L

.field private static final SUPPORT_ANIMATE_FAST:Z = false

.field private static final TAG:Ljava/lang/String; = "AutoBrightnessLenovo.RampAnimator"


# instance fields
.field private mAnimateTimeNanos:J

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mContext:Landroid/content/Context;

.field private mCurrentValue:I

.field private mFirstFrameTimeNanos:J

.field private mFirstTime:Z

.field private mGenerateValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastChangeFast:Z

.field private mListener:Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mScreenBrightnessRangeMinimum:I

.field private mSmoothAdjustThreshold:I

.field private mStateManager:Lcom/android/server/display/autobrightness/StateManager;

.field private mSupportLcdStepRate:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mAnimateTimeNanos:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)Landroid/view/Choreographer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mCurrentValue:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mFirstFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mGenerateValues:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mListener:Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)Landroid/util/IntProperty;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mAnimating:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mCurrentValue:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->postAnimationCallback()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;Landroid/content/Context;Lcom/android/server/display/autobrightness/StateManager;I)V
    .locals 2
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "stateManager"    # Lcom/android/server/display/autobrightness/StateManager;
    .param p5, "screenBrightnessRangeMinimum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;",
            "Landroid/content/Context;",
            "Lcom/android/server/display/autobrightness/StateManager;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/android/server/display/autobrightness/RampAnimatorLenovo;, "Lcom/android/server/display/autobrightness/RampAnimatorLenovo<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mCurrentValue:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mFirstTime:Z

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mGenerateValues:Ljava/util/List;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mLastChangeFast:Z

    .line 353
    new-instance v0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;-><init>(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)V

    iput-object v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mAnimationCallback:Ljava/lang/Runnable;

    .line 81
    iput-object p1, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mObject:Ljava/lang/Object;

    .line 82
    iput-object p2, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mProperty:Landroid/util/IntProperty;

    .line 83
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mChoreographer:Landroid/view/Choreographer;

    .line 85
    iput-object p3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    const v1, 0x10e009c

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mSmoothAdjustThreshold:I

    .line 88
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    const v1, 0x112009f

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mSupportLcdStepRate:Z

    .line 91
    iput-object p4, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mStateManager:Lcom/android/server/display/autobrightness/StateManager;

    .line 92
    iput p5, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mScreenBrightnessRangeMinimum:I

    .line 80
    return-void
.end method

.method private cancelAnimationCallback()V
    .locals 4

    .prologue
    .line 350
    .local p0, "this":Lcom/android/server/display/autobrightness/RampAnimatorLenovo;, "Lcom/android/server/display/autobrightness/RampAnimatorLenovo<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method private generateValueFast(III)Ljava/util/List;
    .locals 12
    .param p1, "current_value"    # I
    .param p2, "target_value"    # I
    .param p3, "lastPowerPolicy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lcom/android/server/display/autobrightness/RampAnimatorLenovo;, "Lcom/android/server/display/autobrightness/RampAnimatorLenovo<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v1, "generateValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p3, :cond_1

    .line 311
    iget v4, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mScreenBrightnessRangeMinimum:I

    .line 312
    .local v4, "startValue":I
    :goto_0
    move v0, p2

    .line 316
    .local v0, "endValue":I
    move v6, v4

    .line 318
    .local v6, "value":I
    if-le v0, v4, :cond_2

    .line 319
    const/4 v5, 0x1

    .line 324
    .local v5, "stepValue":I
    :goto_1
    if-lez v5, :cond_3

    if-ge v6, v0, :cond_4

    .line 325
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    add-int/2addr v6, v5

    goto :goto_1

    .line 311
    .end local v0    # "endValue":I
    .end local v4    # "startValue":I
    .end local v5    # "stepValue":I
    .end local v6    # "value":I
    :cond_1
    move v4, p1

    .restart local v4    # "startValue":I
    goto :goto_0

    .line 321
    .restart local v0    # "endValue":I
    .restart local v6    # "value":I
    :cond_2
    const/4 v5, -0x1

    .restart local v5    # "stepValue":I
    goto :goto_1

    .line 324
    :cond_3
    if-gt v6, v0, :cond_0

    .line 329
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    const-wide/16 v2, 0x5

    .line 332
    .local v2, "interval":J
    if-nez p3, :cond_5

    .line 333
    const-wide/16 v2, 0x32

    .line 336
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    int-to-long v8, v7

    mul-long/2addr v8, v2

    const-wide/32 v10, 0xf4240

    mul-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mAnimateTimeNanos:J

    .line 338
    const-string/jumbo v7, "AutoBrightnessLenovo.RampAnimator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "generateValueFast:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "-> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 340
    const-string/jumbo v9, ", interval= "

    .line 338
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-object v1
.end method

.method private generateValueSlow(II)Ljava/util/List;
    .locals 16
    .param p1, "current_value"    # I
    .param p2, "target_value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/android/server/display/autobrightness/RampAnimatorLenovo;, "Lcom/android/server/display/autobrightness/RampAnimatorLenovo<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v4, "generateValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mSmoothAdjustThreshold:I

    move/from16 v0, p1

    if-gt v0, v12, :cond_2

    .line 222
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mSmoothAdjustThreshold:I

    move/from16 v0, p2

    if-gt v0, v12, :cond_2

    .line 224
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mStateManager:Lcom/android/server/display/autobrightness/StateManager;

    invoke-virtual {v12}, Lcom/android/server/display/autobrightness/StateManager;->getCurrentState()Lcom/android/server/display/autobrightness/StateManager$STATE;

    move-result-object v2

    .line 225
    .local v2, "currentState":Lcom/android/server/display/autobrightness/StateManager$STATE;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mStateManager:Lcom/android/server/display/autobrightness/StateManager;

    invoke-virtual {v12}, Lcom/android/server/display/autobrightness/StateManager;->getLastState()Lcom/android/server/display/autobrightness/StateManager$STATE;

    move-result-object v5

    .line 227
    .local v5, "lastState":Lcom/android/server/display/autobrightness/StateManager$STATE;
    sget-object v12, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_DARK:Lcom/android/server/display/autobrightness/StateManager$STATE;

    if-eq v2, v12, :cond_0

    .line 228
    sget-object v12, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_DARK:Lcom/android/server/display/autobrightness/StateManager$STATE;

    if-ne v5, v12, :cond_1

    .line 229
    sget-object v12, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_BRIGHT:Lcom/android/server/display/autobrightness/StateManager$STATE;

    if-ne v2, v12, :cond_1

    .line 230
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mStateManager:Lcom/android/server/display/autobrightness/StateManager;

    invoke-virtual {v12}, Lcom/android/server/display/autobrightness/StateManager;->isStateJustChanged()Z

    move-result v12

    .line 227
    if-eqz v12, :cond_1

    .line 231
    :cond_0
    const-string/jumbo v12, "AutoBrightnessLenovo.RampAnimator"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "generateValueSlow: direct add target value "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mAnimateTimeNanos:J

    .line 235
    return-object v4

    .line 239
    :cond_1
    const-string/jumbo v12, "AutoBrightnessLenovo.RampAnimator"

    .line 240
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "generateValueSlow: not change when LCD is below threashold. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 241
    invoke-virtual {v5}, Lcom/android/server/display/autobrightness/StateManager$STATE;->name()Ljava/lang/String;

    move-result-object v14

    .line 240
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 242
    const-string/jumbo v14, " -> "

    .line 240
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 242
    invoke-virtual {v2}, Lcom/android/server/display/autobrightness/StateManager$STATE;->name()Ljava/lang/String;

    move-result-object v14

    .line 240
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 239
    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-object v4

    .line 244
    .end local v2    # "currentState":Lcom/android/server/display/autobrightness/StateManager$STATE;
    .end local v5    # "lastState":Lcom/android/server/display/autobrightness/StateManager$STATE;
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mSmoothAdjustThreshold:I

    move/from16 v0, p1

    if-gt v0, v12, :cond_4

    .line 245
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mSmoothAdjustThreshold:I

    move/from16 v0, p2

    if-le v0, v12, :cond_4

    .line 247
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mSmoothAdjustThreshold:I

    .line 248
    .local v8, "startValue":I
    move/from16 v3, p2

    .line 261
    .local v3, "endValue":I
    :goto_0
    move v10, v8

    .line 263
    .local v10, "value":I
    if-le v3, v8, :cond_6

    .line 264
    const/4 v9, 0x1

    .line 265
    .local v9, "stepValue":I
    sub-int v11, v3, v8

    .line 271
    .local v11, "valueDelta":I
    :goto_1
    if-lez v9, :cond_7

    if-ge v10, v3, :cond_8

    .line 272
    :cond_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/2addr v10, v9

    goto :goto_1

    .line 249
    .end local v3    # "endValue":I
    .end local v8    # "startValue":I
    .end local v9    # "stepValue":I
    .end local v10    # "value":I
    .end local v11    # "valueDelta":I
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mSmoothAdjustThreshold:I

    move/from16 v0, p1

    if-le v0, v12, :cond_5

    .line 250
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mSmoothAdjustThreshold:I

    move/from16 v0, p2

    if-gt v0, v12, :cond_5

    .line 251
    move/from16 v8, p1

    .line 252
    .restart local v8    # "startValue":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mSmoothAdjustThreshold:I

    .restart local v3    # "endValue":I
    goto :goto_0

    .line 254
    .end local v3    # "endValue":I
    .end local v8    # "startValue":I
    :cond_5
    move/from16 v8, p1

    .line 255
    .restart local v8    # "startValue":I
    move/from16 v3, p2

    .restart local v3    # "endValue":I
    goto :goto_0

    .line 267
    .restart local v10    # "value":I
    :cond_6
    const/4 v9, -0x1

    .line 268
    .restart local v9    # "stepValue":I
    sub-int v11, v8, v3

    .restart local v11    # "valueDelta":I
    goto :goto_1

    .line 271
    :cond_7
    if-gt v10, v3, :cond_3

    .line 276
    :cond_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mSupportLcdStepRate:Z

    if-eqz v12, :cond_9

    .line 282
    const-wide/16 v6, 0x64

    .line 299
    .local v6, "interval":J
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    int-to-long v12, v12

    mul-long/2addr v12, v6

    const-wide/32 v14, 0xf4240

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mAnimateTimeNanos:J

    .line 301
    const-string/jumbo v12, "AutoBrightnessLenovo.RampAnimator"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "generateValueSlow:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "-> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 303
    const-string/jumbo v14, ", interval= "

    .line 301
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-object v4

    .line 284
    .end local v6    # "interval":J
    :cond_9
    const/16 v12, 0x28

    if-ge v11, v12, :cond_a

    .line 286
    const-wide/16 v6, 0xfa

    .restart local v6    # "interval":J
    goto :goto_2

    .line 287
    .end local v6    # "interval":J
    :cond_a
    const/16 v12, 0x50

    if-ge v11, v12, :cond_b

    .line 289
    const-wide/16 v6, 0xb4

    .restart local v6    # "interval":J
    goto :goto_2

    .line 290
    .end local v6    # "interval":J
    :cond_b
    const/16 v12, 0x96

    if-ge v11, v12, :cond_c

    .line 292
    const-wide/16 v6, 0x78

    .restart local v6    # "interval":J
    goto :goto_2

    .line 295
    .end local v6    # "interval":J
    :cond_c
    const-wide/16 v6, 0x50

    .restart local v6    # "interval":J
    goto :goto_2
.end method

.method private postAnimationCallback()V
    .locals 4

    .prologue
    .line 346
    .local p0, "this":Lcom/android/server/display/autobrightness/RampAnimatorLenovo;, "Lcom/android/server/display/autobrightness/RampAnimatorLenovo<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 345
    return-void
.end method

.method private setLcdStepRate(Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;)V
    .locals 1
    .param p1, "rate"    # Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    .prologue
    .line 397
    .local p0, "this":Lcom/android/server/display/autobrightness/RampAnimatorLenovo;, "Lcom/android/server/display/autobrightness/RampAnimatorLenovo<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mSupportLcdStepRate:Z

    if-nez v0, :cond_0

    .line 398
    return-void

    .line 401
    :cond_0
    invoke-static {p1}, Lcom/android/server/display/autobrightness/LcdStepRate;->scheduleStepRate(Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;)V

    .line 396
    return-void
.end method


# virtual methods
.method public animateTo(IIZI)Z
    .locals 8
    .param p1, "target"    # I
    .param p2, "rate"    # I
    .param p3, "changeFast"    # Z
    .param p4, "lastPowerPolicy"    # I

    .prologue
    .local p0, "this":Lcom/android/server/display/autobrightness/RampAnimatorLenovo;, "Lcom/android/server/display/autobrightness/RampAnimatorLenovo<TT;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 114
    iget-boolean v3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mFirstTime:Z

    if-nez v3, :cond_0

    if-gtz p2, :cond_4

    .line 116
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mLastChangeFast:Z

    .line 118
    iget-boolean v3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mFirstTime:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mCurrentValue:I

    if-eq p1, v3, :cond_7

    .line 119
    :cond_1
    const-string/jumbo v3, "AutoBrightnessLenovo.RampAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "animateTo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mCurrentValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " direct to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput-boolean v6, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mFirstTime:Z

    .line 122
    iput p1, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mCurrentValue:I

    .line 123
    sget-object v3, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->FAST:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-direct {p0, v3}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->setLcdStepRate(Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;)V

    .line 124
    iget-object v3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mProperty:Landroid/util/IntProperty;

    iget-object v4, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mObject:Ljava/lang/Object;

    invoke-virtual {v3, v4, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 125
    iget-boolean v3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mAnimating:Z

    if-eqz v3, :cond_2

    .line 126
    iput-boolean v6, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mAnimating:Z

    .line 127
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->cancelAnimationCallback()V

    .line 129
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mListener:Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;

    if-eqz v3, :cond_3

    .line 130
    iget-object v3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mListener:Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;

    invoke-interface {v3}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;->onAnimationEnd()V

    .line 132
    :cond_3
    return v7

    .line 114
    :cond_4
    if-nez p3, :cond_0

    .line 138
    iget-boolean v3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mAnimating:Z

    if-eqz v3, :cond_5

    .line 139
    iput-boolean v6, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mAnimating:Z

    .line 140
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->cancelAnimationCallback()V

    .line 143
    iget-boolean v3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mLastChangeFast:Z

    if-eqz v3, :cond_5

    .line 144
    if-eqz p3, :cond_8

    .line 161
    :cond_5
    :goto_0
    iget v3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mCurrentValue:I

    if-eq v3, p1, :cond_9

    const/4 v0, 0x1

    .line 163
    .local v0, "changed":Z
    :goto_1
    if-eqz v0, :cond_d

    .line 164
    const-string/jumbo v4, "AutoBrightnessLenovo.RampAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "animateTo: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mCurrentValue:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_a

    const-string/jumbo v3, " fast"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 165
    const-string/jumbo v5, " to "

    .line 164
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-eqz p3, :cond_b

    .line 172
    iget v3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mCurrentValue:I

    invoke-direct {p0, v3, p1, p4}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->generateValueFast(III)Ljava/util/List;

    move-result-object v1

    .line 178
    .local v1, "generateValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_3
    if-eqz v1, :cond_6

    .line 179
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_c

    .line 181
    :cond_6
    return v6

    .line 134
    .end local v0    # "changed":Z
    .end local v1    # "generateValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_7
    return v6

    .line 145
    :cond_8
    iget-object v3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mGenerateValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 146
    iget-object v3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mGenerateValues:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mGenerateValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 148
    .local v2, "lastTarget":I
    const-string/jumbo v3, "AutoBrightnessLenovo.RampAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "animateTo: finish last fast animate to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput v2, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mCurrentValue:I

    .line 151
    sget-object v3, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->FAST:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-direct {p0, v3}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->setLcdStepRate(Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;)V

    .line 152
    iget-object v3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mProperty:Landroid/util/IntProperty;

    iget-object v4, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mObject:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 154
    iget-object v3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mListener:Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;

    if-eqz v3, :cond_5

    .line 155
    iget-object v3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mListener:Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;

    invoke-interface {v3}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;->onAnimationEnd()V

    goto/16 :goto_0

    .line 161
    .end local v2    # "lastTarget":I
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto/16 :goto_1

    .line 164
    :cond_a
    const-string/jumbo v3, " slow"

    goto :goto_2

    .line 175
    :cond_b
    iget v3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mCurrentValue:I

    invoke-direct {p0, v3, p1}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->generateValueSlow(II)Ljava/util/List;

    move-result-object v1

    .restart local v1    # "generateValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_3

    .line 185
    :cond_c
    iput-object v1, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mGenerateValues:Ljava/util/List;

    .line 186
    iput-boolean p3, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mLastChangeFast:Z

    .line 187
    if-eqz p3, :cond_e

    .line 188
    sget-object v3, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->FAST:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-direct {p0, v3}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->setLcdStepRate(Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;)V

    .line 193
    :goto_4
    iput-boolean v7, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mAnimating:Z

    .line 194
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mFirstFrameTimeNanos:J

    .line 195
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->postAnimationCallback()V

    .line 198
    .end local v1    # "generateValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_d
    return v0

    .line 190
    .restart local v1    # "generateValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_e
    sget-object v3, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->SLOW:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-direct {p0, v3}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->setLcdStepRate(Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;)V

    goto :goto_4
.end method

.method public getCurrentValue()I
    .locals 3

    .prologue
    .line 99
    .local p0, "this":Lcom/android/server/display/autobrightness/RampAnimatorLenovo;, "Lcom/android/server/display/autobrightness/RampAnimatorLenovo<TT;>;"
    const-string/jumbo v0, "--AutoBrightnessLenovo.RampAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mCurrentValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mCurrentValue:I

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 205
    .local p0, "this":Lcom/android/server/display/autobrightness/RampAnimatorLenovo;, "Lcom/android/server/display/autobrightness/RampAnimatorLenovo<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mAnimating:Z

    return v0
.end method

.method public setListener(Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;

    .prologue
    .line 212
    .local p0, "this":Lcom/android/server/display/autobrightness/RampAnimatorLenovo;, "Lcom/android/server/display/autobrightness/RampAnimatorLenovo<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mListener:Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;

    .line 211
    return-void
.end method
