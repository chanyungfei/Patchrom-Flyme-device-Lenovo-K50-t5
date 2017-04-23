.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$TwoDigitFormatter;,
        Landroid/widget/NumberPicker$OnValueChangeListener;,
        Landroid/widget/NumberPicker$OnScrollListener;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$InputTextFilter;,
        Landroid/widget/NumberPicker$PressedStateHelper;,
        Landroid/widget/NumberPicker$SetSelectionCommand;,
        Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/widget/NumberPicker$CustomEditText;,
        Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Landroid/widget/NumberPicker$TextColorHelper;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x1090093

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static SELECTOR_MIDDLE_ITEM_INDEX:I = 0x0

.field private static SELECTOR_WHEEL_ITEM_COUNT:I = 0x0

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;


# instance fields
.field private mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentOrientation:I

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private mHideWheelUntilFocused:Z

.field private mIgnoreMoveEvents:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private mPerformClickOnTap:Z

.field private final mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

.field private final mSolidColor:I

.field private mTextColorHelper:Landroid/widget/NumberPicker$TextColorHelper;

.field private mTextHeight:I

.field private mTextOffset:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelPreferred:Z


# direct methods
.method static synthetic -get0()[C
    .locals 1

    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic -get10(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic -get11(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method static synthetic -get12(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic -get13(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic -get14(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic -get15(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic -get16(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    return-object v0
.end method

.method static synthetic -get17(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$TextColorHelper;
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mTextColorHelper:Landroid/widget/NumberPicker$TextColorHelper;

    return-object v0
.end method

.method static synthetic -get18(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mTop:I

    return v0
.end method

.method static synthetic -get19(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic -get2(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic -get20(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method static synthetic -get21(Landroid/widget/NumberPicker;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic -get3(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/NumberPicker;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic -get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/NumberPicker;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic -get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get8(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic -get9(Landroid/widget/NumberPicker;)J
    .locals 2

    iget-wide v0, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic -set0(Landroid/widget/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic -set1(Landroid/widget/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/NumberPicker;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "boundInView"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/NumberPicker;I)I
    .locals 1
    .param p1, "selectorIndex"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/NumberPicker;I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Landroid/widget/NumberPicker;Z)V
    .locals 0
    .param p1, "increment"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/widget/NumberPicker;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method static synthetic -wrap7(Landroid/widget/NumberPicker;ZJ)V
    .locals 0
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/widget/NumberPicker;II)V
    .locals 0
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x3

    sput v0, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    .line 125
    sget v0, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    .line 216
    new-instance v0, Landroid/widget/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Landroid/widget/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    .line 2255
    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 106
    return-void

    .line 2255
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 592
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 603
    const v0, 0x116001e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 602
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 616
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 615
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 633
    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 170
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 320
    const-wide/16 v22, 0x12c

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 325
    new-instance v22, Landroid/util/SparseArray;

    invoke-direct/range {v22 .. v22}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 332
    sget v22, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 352
    const/high16 v22, -0x80000000

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 355
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mTextOffset:I

    .line 356
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mTextHeight:I

    .line 459
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mScrollState:I

    .line 510
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 636
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 637
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    .line 638
    .local v18, "orientation":I
    const/16 v22, 0x2

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 639
    const/16 v22, 0x3

    sput v22, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    .line 640
    sget v22, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    div-int/lit8 v22, v22, 0x2

    sput v22, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    .line 641
    sget v22, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 648
    :cond_0
    :goto_0
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v8, v0, [I

    const v22, 0x1010435

    const/16 v23, 0x0

    aput v22, v8, v23

    .line 649
    .local v8, "attrsArray":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v21

    .line 650
    .local v21, "typedArray":Landroid/content/res/TypedArray;
    const/16 v22, 0x0

    const v23, -0xbe4a0e

    invoke-virtual/range {v21 .. v23}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 651
    .local v6, "accentColor":I
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 652
    new-instance v22, Landroid/widget/NumberPicker$TextColorHelper;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Landroid/widget/NumberPicker$TextColorHelper;-><init>(Landroid/widget/NumberPicker;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mTextColorHelper:Landroid/widget/NumberPicker$TextColorHelper;

    .line 658
    .end local v6    # "accentColor":I
    .end local v8    # "attrsArray":[I
    .end local v18    # "orientation":I
    .end local v21    # "typedArray":Landroid/content/res/TypedArray;
    :cond_1
    sget-object v22, Lcom/android/internal/R$styleable;->NumberPicker:[I

    .line 657
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 660
    .local v7, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v22, 0x1

    const v23, 0x1090093

    .line 659
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 662
    .local v15, "layoutResId":I
    const v22, 0x1090093

    move/from16 v0, v22

    if-eq v15, v0, :cond_4

    const/16 v22, 0x1

    :goto_1
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 665
    const/16 v22, 0xa

    const/16 v23, 0x0

    .line 664
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    .line 667
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mSolidColor:I

    .line 670
    const/16 v22, 0x2

    .line 669
    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 671
    .local v20, "selectionDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v20, :cond_2

    .line 672
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getLayoutDirection()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 674
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 675
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getDrawableState()[I

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 678
    :cond_2
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 681
    const/high16 v22, 0x40000000    # 2.0f

    .line 682
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    .line 681
    const/16 v24, 0x1

    .line 680
    move/from16 v0, v24

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v22

    move/from16 v0, v22

    float-to-int v13, v0

    .line 684
    .local v13, "defSelectionDividerHeight":I
    const/16 v22, 0x3

    .line 683
    move/from16 v0, v22

    invoke-virtual {v7, v0, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 687
    const/high16 v22, 0x42400000    # 48.0f

    .line 688
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    .line 687
    const/16 v24, 0x1

    .line 686
    move/from16 v0, v24

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v22

    move/from16 v0, v22

    float-to-int v12, v0

    .line 690
    .local v12, "defSelectionDividerDistance":I
    const/16 v22, 0x4

    .line 689
    move/from16 v0, v22

    invoke-virtual {v7, v0, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 693
    const/16 v22, 0x5

    const/16 v23, -0x1

    .line 692
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMinHeight:I

    .line 696
    const/16 v22, 0x6

    const/16 v23, -0x1

    .line 695
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMaxHeight:I

    .line 697
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 698
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 699
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v23, "minHeight > maxHeight"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 642
    .end local v7    # "attributesArray":Landroid/content/res/TypedArray;
    .end local v12    # "defSelectionDividerDistance":I
    .end local v13    # "defSelectionDividerHeight":I
    .end local v15    # "layoutResId":I
    .end local v20    # "selectionDivider":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "orientation":I
    :cond_3
    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 643
    const/16 v22, 0x5

    sput v22, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    .line 644
    sget v22, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    div-int/lit8 v22, v22, 0x2

    sput v22, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    .line 645
    sget v22, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    goto/16 :goto_0

    .line 662
    .end local v18    # "orientation":I
    .restart local v7    # "attributesArray":Landroid/content/res/TypedArray;
    .restart local v15    # "layoutResId":I
    :cond_4
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 703
    .restart local v12    # "defSelectionDividerDistance":I
    .restart local v13    # "defSelectionDividerHeight":I
    .restart local v20    # "selectionDivider":Landroid/graphics/drawable/Drawable;
    :cond_5
    const/16 v22, 0x7

    const/16 v23, -0x1

    .line 702
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMinWidth:I

    .line 706
    const/16 v22, 0x8

    const/16 v23, -0x1

    .line 705
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 707
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 708
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    .line 709
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v23, "minWidth > maxWidth"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 712
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    const/16 v22, 0x1

    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 715
    const/16 v22, 0x9

    .line 714
    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 717
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 719
    new-instance v22, Landroid/widget/NumberPicker$PressedStateHelper;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$PressedStateHelper;-><init>(Landroid/widget/NumberPicker;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 726
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    const/16 v22, 0x0

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 728
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v22

    .line 729
    const-string/jumbo v23, "layout_inflater"

    .line 728
    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 730
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v14, v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 732
    new-instance v16, Landroid/widget/NumberPicker$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$1;-><init>(Landroid/widget/NumberPicker;)V

    .line 744
    .local v16, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v17, Landroid/widget/NumberPicker$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    .line 758
    .local v17, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 759
    const v22, 0x1020382

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageButton;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 767
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 768
    const v22, 0x1020384

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageButton;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 776
    :goto_5
    const v22, 0x1020383

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 778
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const-string/jumbo v23, "/system/fonts/Roboto-Light.ttf"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mTextColorHelper:Landroid/widget/NumberPicker$TextColorHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/NumberPicker$TextColorHelper;->mFocusColor:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setTextColor(I)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    new-instance v23, Landroid/widget/NumberPicker$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 800
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    new-instance v23, Landroid/widget/NumberPicker$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$4;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v23, v0

    .line 822
    new-instance v24, Landroid/widget/NumberPicker$InputTextFilter;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$InputTextFilter;-><init>(Landroid/widget/NumberPicker;)V

    const/16 v25, 0x0

    aput-object v24, v23, v25

    .line 821
    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x6

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 829
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    .line 830
    .local v11, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 831
    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 832
    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v22

    div-int/lit8 v22, v22, 0x8

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EditText;->getTextSize()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mTextSize:I

    .line 837
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 838
    .local v19, "paint":Landroid/graphics/Paint;
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 839
    sget-object v22, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 840
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mTextSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 843
    .local v10, "colors":Landroid/content/res/ColorStateList;
    sget-object v22, Landroid/widget/NumberPicker;->ENABLED_STATE_SET:[I

    const/16 v23, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v9

    .line 844
    .local v9, "color":I
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 845
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 848
    new-instance v22, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-direct/range {v22 .. v25}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 849
    new-instance v22, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v23

    new-instance v24, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v25, 0x40200000    # 2.5f

    invoke-direct/range {v24 .. v25}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v22 .. v24}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 851
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 854
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getImportantForAccessibility()I

    move-result v22

    if-nez v22, :cond_8

    .line 855
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setImportantForAccessibility(I)V

    .line 859
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mCurrentOrientation:I

    .line 632
    return-void

    .line 712
    .end local v9    # "color":I
    .end local v10    # "colors":Landroid/content/res/ColorStateList;
    .end local v11    # "configuration":Landroid/view/ViewConfiguration;
    .end local v14    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v17    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .end local v19    # "paint":Landroid/graphics/Paint;
    :cond_9
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 726
    :cond_a
    const/16 v22, 0x1

    goto/16 :goto_3

    .line 763
    .restart local v14    # "inflater":Landroid/view/LayoutInflater;
    .restart local v16    # "onClickListener":Landroid/view/View$OnClickListener;
    .restart local v17    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    :cond_b
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_4

    .line 772
    :cond_c
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_5
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1910
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1911
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1912
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1913
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1915
    :cond_0
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1916
    if-eqz p1, :cond_1

    .line 1917
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1921
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1909
    :goto_1
    return-void

    .line 1919
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1923
    :cond_2
    if-eqz p1, :cond_3

    .line 1924
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 1926
    :cond_3
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 4
    .param p1, "selectorIndices"    # [I

    .prologue
    const/4 v3, 0x0

    .line 2058
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 2059
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 2058
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2061
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 2062
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 2063
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 2065
    :cond_1
    aput v1, p1, v3

    .line 2066
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 2057
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 2074
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2075
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2076
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2077
    return-void

    .line 2079
    :cond_0
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 2080
    :cond_1
    const-string/jumbo v2, ""

    .line 2089
    :goto_0
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2073
    return-void

    .line 2082
    :cond_2
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2083
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 2084
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    goto :goto_0

    .line 2086
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2376
    iget v0, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 2377
    .local v4, "deltaY":I
    if-eqz v4, :cond_2

    .line 2378
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 2379
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 2380
    if-lez v4, :cond_1

    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 2382
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2383
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 2384
    const/4 v0, 0x1

    return v0

    .line 2380
    :cond_1
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    goto :goto_0

    .line 2386
    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 2014
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 2016
    if-lez p1, :cond_0

    .line 2017
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2022
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 2013
    return-void

    .line 2019
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2093
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 3007
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2208
    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2210
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2211
    :catch_0
    move-exception v0

    .line 2234
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_0
    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v2

    .line 2215
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 2217
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2218
    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2219
    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    add-int/2addr v2, v1

    return v2

    .line 2215
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2228
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 2229
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static final getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 2029
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 2030
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 2031
    :cond_0
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 2032
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 2034
    :cond_1
    return p1
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 1419
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1420
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1421
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1422
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1423
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1418
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 2042
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 2043
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 2042
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2045
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 2046
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 2047
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 2049
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 2050
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 2041
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1973
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1978
    :goto_0
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v1, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setFadingEdgeLength(I)V

    .line 1970
    return-void

    .line 1975
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    goto :goto_0
.end method

.method private initializeSelectorWheel()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    .line 1933
    iget-object v7, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1934
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v1, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 1935
    .local v1, "fontScal":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v1, v7

    if-lez v7, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1936
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1937
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1938
    .local v3, "selectorIndices":[I
    array-length v7, v3

    iget v8, p0, Landroid/widget/NumberPicker;->mTextSize:I

    int-to-float v8, v8

    div-float/2addr v8, v1

    float-to-int v8, v8

    mul-int v6, v7, v8

    .line 1939
    .local v6, "totalTextHeight":I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x9080030

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1940
    .local v2, "numberPadding":I
    iget v7, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v8, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    sub-int/2addr v7, v6

    int-to-float v5, v7

    .line 1941
    .local v5, "totalTextGapHeight":F
    array-length v7, v3

    int-to-float v4, v7

    .line 1942
    .local v4, "textGapCount":F
    div-float v7, v5, v4

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1943
    iget v7, p0, Landroid/widget/NumberPicker;->mTextSize:I

    int-to-float v7, v7

    div-float/2addr v7, v1

    float-to-int v7, v7

    iget v8, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1946
    iget-object v7, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getBaseline()I

    move-result v7

    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getTop()I

    move-result v8

    add-int v0, v7, v8

    .line 1948
    .local v0, "editTextTextPosition":I
    iget v7, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sget v8, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    mul-int/2addr v7, v8

    .line 1947
    sub-int v7, v0, v7

    iput v7, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1949
    iget v7, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v7, p0, Landroid/widget/NumberPicker;->mTextOffset:I

    .line 1950
    iget v7, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sget v8, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v7, v8

    iput v7, p0, Landroid/widget/NumberPicker;->mTextHeight:I

    .line 1966
    .end local v1    # "fontScal":F
    .end local v2    # "numberPadding":I
    :goto_0
    iget v7, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v7, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1967
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1931
    return-void

    .line 1952
    .end local v0    # "editTextTextPosition":I
    .end local v3    # "selectorIndices":[I
    .end local v4    # "textGapCount":F
    .end local v5    # "totalTextGapHeight":F
    .end local v6    # "totalTextHeight":I
    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1953
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1954
    .restart local v3    # "selectorIndices":[I
    array-length v7, v3

    iget v8, p0, Landroid/widget/NumberPicker;->mTextSize:I

    mul-int v6, v7, v8

    .line 1955
    .restart local v6    # "totalTextHeight":I
    iget v7, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v8, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    int-to-float v5, v7

    .line 1956
    .restart local v5    # "totalTextGapHeight":F
    array-length v7, v3

    int-to-float v4, v7

    .line 1957
    .restart local v4    # "textGapCount":F
    div-float v7, v5, v4

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1958
    iget v7, p0, Landroid/widget/NumberPicker;->mTextSize:I

    iget v8, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1961
    iget-object v7, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getBaseline()I

    move-result v7

    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getTop()I

    move-result v8

    add-int v0, v7, v8

    .line 1963
    .restart local v0    # "editTextTextPosition":I
    iget v7, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sget v8, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    mul-int/2addr v7, v8

    .line 1962
    sub-int v7, v0, v7

    iput v7, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    goto :goto_0
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1862
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1863
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1864
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1865
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1866
    sget v4, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    sub-int v4, v1, v4

    add-int v2, v0, v4

    .line 1867
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1868
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1870
    :cond_0
    aput v2, v3, v1

    .line 1871
    aget v4, v3, v1

    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1865
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1861
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1820
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1821
    return p1

    .line 1823
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1824
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1825
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 1833
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1827
    :sswitch_0
    return p1

    .line 1829
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 1831
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 1825
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 11
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 922
    invoke-virtual {p1, v10}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 925
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v5

    .line 926
    .local v5, "scrollerFinalY":I
    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 927
    .local v4, "scrollerCurrY":I
    invoke-virtual {p1}, Landroid/widget/Scroller;->getStartY()I

    move-result v6

    .line 928
    .local v6, "scrollerStartY":I
    if-ge v5, v6, :cond_3

    const/4 v2, 0x1

    .line 929
    .local v2, "increment":Z
    :goto_0
    if-eqz v2, :cond_4

    if-gt v4, v6, :cond_0

    if-ge v4, v5, :cond_4

    .line 932
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 935
    :cond_1
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v7

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v8

    sub-int v0, v7, v8

    .line 936
    .local v0, "amountToScroll":I
    iget v7, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v7, v0

    iget v8, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int v1, v7, v8

    .line 937
    .local v1, "futureScrollOffset":I
    iget v7, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v3, v7, v1

    .line 938
    .local v3, "overshootAdjustment":I
    if-eqz v3, :cond_6

    .line 939
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v8, v8, 0x2

    if-le v7, v8, :cond_2

    .line 940
    if-lez v3, :cond_5

    .line 941
    iget v7, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v3, v7

    .line 946
    :cond_2
    :goto_2
    add-int/2addr v0, v3

    .line 947
    invoke-virtual {p0, v9, v0}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 948
    return v10

    .line 928
    .end local v0    # "amountToScroll":I
    .end local v1    # "futureScrollOffset":I
    .end local v2    # "increment":Z
    .end local v3    # "overshootAdjustment":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "increment":Z
    goto :goto_0

    .line 930
    :cond_4
    if-nez v2, :cond_1

    .line 931
    if-gt v4, v5, :cond_0

    if-ge v4, v6, :cond_1

    goto :goto_1

    .line 943
    .restart local v0    # "amountToScroll":I
    .restart local v1    # "futureScrollOffset":I
    .restart local v3    # "overshootAdjustment":I
    :cond_5
    iget v7, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v3, v7

    goto :goto_2

    .line 950
    :cond_6
    return v9
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 2137
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 2138
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    .line 2136
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 2001
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 2002
    return-void

    .line 2004
    :cond_0
    iput p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 2005
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 2006
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPicker;I)V

    .line 2000
    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 1985
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_2

    .line 1986
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1987
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1989
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1984
    :cond_1
    :goto_0
    return-void

    .line 1991
    :cond_2
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1992
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 4

    .prologue
    .line 2171
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 2172
    new-instance v0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 2176
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2170
    return-void

    .line 2174
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 2
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 2148
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 2149
    new-instance v0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 2153
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->-wrap0(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2154
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2147
    return-void

    .line 2151
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 2242
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2243
    new-instance v0, Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    .line 2247
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-static {v0, p1}, Landroid/widget/NumberPicker$SetSelectionCommand;->-set1(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    .line 2248
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-static {v0, p2}, Landroid/widget/NumberPicker$SetSelectionCommand;->-set0(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    .line 2249
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2241
    return-void

    .line 2245
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 2192
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2193
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2195
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 2196
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2198
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 2199
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2201
    :cond_2
    iget-object v0, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2191
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .prologue
    .line 2183
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2184
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2182
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .prologue
    .line 2161
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2162
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2160
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1849
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1850
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1851
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result v1

    return v1

    .line 1853
    .end local v0    # "desiredWidth":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 1882
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1883
    return-void

    .line 1886
    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 1887
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1892
    :goto_0
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1893
    .local v0, "previous":I
    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1894
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1895
    if-eqz p2, :cond_1

    .line 1896
    invoke-direct {p0, v0, p1}, Landroid/widget/NumberPicker;->notifyChange(II)V

    .line 1898
    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1899
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1881
    return-void

    .line 1889
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1890
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method

.method private showSoftInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1405
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1406
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1407
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1408
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1410
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1411
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1404
    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1432
    iget-boolean v8, p0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_0

    .line 1433
    return-void

    .line 1435
    :cond_0
    const/4 v4, 0x0

    .line 1436
    .local v4, "maxTextWidth":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1437
    const/4 v3, 0x0

    .line 1438
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v8, 0x9

    if-gt v2, v8, :cond_2

    .line 1439
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1440
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_1

    .line 1441
    move v3, v1

    .line 1438
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1444
    .end local v1    # "digitWidth":F
    :cond_2
    const/4 v5, 0x0

    .line 1445
    .local v5, "numberOfDigits":I
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1446
    .local v0, "current":I
    :goto_1
    if-lez v0, :cond_3

    .line 1447
    add-int/lit8 v5, v5, 0x1

    .line 1448
    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    .line 1450
    :cond_3
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1460
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_4
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1461
    iget v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_5

    .line 1462
    iget v8, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1463
    iput v4, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 1467
    :goto_2
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1431
    :cond_5
    return-void

    .line 1452
    .end local v2    # "i":I
    :cond_6
    iget-object v8, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1453
    .local v7, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v7, :cond_4

    .line 1454
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1455
    .local v6, "textWidth":F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1456
    float-to-int v4, v6

    .line 1453
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1465
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_8
    iget v8, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    iput v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    goto :goto_2
.end method

.method private updateInputTextView()Z
    .locals 4

    .prologue
    .line 2122
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_1

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 2124
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2129
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 2123
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 2125
    :cond_2
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2126
    const/4 v1, 0x1

    return v1
.end method

.method private updateWrapSelectorWheel()V
    .locals 3

    .prologue
    .line 1514
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1515
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    :goto_1
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1513
    return-void

    .line 1514
    .end local v0    # "wrappingAllowed":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "wrappingAllowed":Z
    goto :goto_0

    .line 1515
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2097
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2098
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2100
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 2096
    :goto_0
    return-void

    .line 2103
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 2104
    .local v0, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1201
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1202
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1203
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1204
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1205
    return-void

    .line 1208
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1209
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1210
    .local v0, "currentScrollerY":I
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1211
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1213
    :cond_1
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v3, v2}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 1214
    iput v0, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1215
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1216
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    .line 1200
    :goto_0
    return-void

    .line 1218
    :cond_2
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1302
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 1292
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1297
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x100

    const/16 v7, 0x80

    const/16 v6, 0x40

    const/4 v5, -0x1

    .line 1152
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 1153
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 1155
    :cond_0
    iget-object v4, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 1158
    .local v1, "eventY":I
    iget v4, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v1, v4, :cond_2

    .line 1159
    const/4 v2, 0x3

    .line 1165
    .local v2, "hoveredVirtualViewId":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1167
    .local v0, "action":I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1168
    .local v3, "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    packed-switch v0, :pswitch_data_0

    .line 1196
    .end local v0    # "action":I
    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v4, 0x0

    return v4

    .line 1160
    .restart local v1    # "eventY":I
    :cond_2
    iget v4, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v1, v4, :cond_3

    .line 1161
    const/4 v2, 0x1

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1163
    .end local v2    # "hoveredVirtualViewId":I
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1170
    .restart local v0    # "action":I
    .restart local v3    # "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :pswitch_1
    invoke-virtual {v3, v2, v7}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1172
    iput v2, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1173
    invoke-virtual {v3, v2, v6, v9}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1177
    :pswitch_2
    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v2, :cond_1

    .line 1178
    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v5, :cond_1

    .line 1180
    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1179
    invoke-virtual {v3, v4, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1182
    invoke-virtual {v3, v2, v7}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1184
    iput v2, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1185
    invoke-virtual {v3, v2, v6, v9}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1190
    :pswitch_3
    invoke-virtual {v3, v2, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1192
    iput v5, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

    .line 1168
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 1103
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1104
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 1135
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1107
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 1111
    :sswitch_1
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1114
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1116
    :pswitch_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-ne v0, v4, :cond_3

    .line 1117
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1118
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->requestFocus()Z

    .line 1119
    iput v0, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1120
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1121
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1122
    if-ne v0, v4, :cond_4

    move v1, v2

    :goto_2
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1124
    :cond_2
    return v2

    .line 1117
    :cond_3
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v3

    if-le v1, v3, :cond_0

    goto :goto_1

    .line 1122
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 1128
    :pswitch_1
    iget v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_0

    .line 1129
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1130
    return v2

    .line 1104
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1091
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1092
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1098
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1095
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 1092
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1141
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1147
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1144
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 1141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1669
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1671
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getDrawableState()[I

    move-result-object v0

    .line 1673
    .local v0, "state":[I
    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1674
    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1668
    :cond_0
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 1803
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1804
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    .line 1806
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1807
    new-instance v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1809
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1657
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1621
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1584
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1547
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1307
    iget v0, p0, Landroid/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1652
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1538
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1480
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1681
    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    .line 1683
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1684
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1680
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2534
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2536
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentOrientation:I

    if-eq v1, v2, :cond_4

    .line 2537
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2538
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2540
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2541
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2544
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2545
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 2546
    const/4 v1, 0x3

    sput v1, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    .line 2550
    :cond_2
    :goto_0
    sget v1, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    div-int/lit8 v1, v1, 0x2

    sput v1, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    .line 2551
    sget v1, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 2552
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x9080040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    .line 2553
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 2554
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2555
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2558
    .end local v0    # "str":Ljava/lang/String;
    :cond_3
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentOrientation:I

    .line 2533
    :cond_4
    return-void

    .line 2547
    :cond_5
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2548
    const/4 v1, 0x5

    sput v1, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1662
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1663
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1661
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1700
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 1701
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1702
    return-void

    .line 1704
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->hasFocus()Z

    move-result v12

    .line 1705
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mRight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1706
    .local v17, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1709
    .local v18, "y":F
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 1710
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mScrollState:I

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 1711
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    sget-object v20, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mRight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1716
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    sget-object v20, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mRight:I

    move/from16 v21, v0

    .line 1719
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mBottom:I

    move/from16 v22, v0

    .line 1718
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1725
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1726
    .local v11, "selectorIndices":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_c

    .line 1727
    aget v10, v11, v7

    .line 1728
    .local v10, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1735
    .local v9, "scrollSelectorValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1736
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mTextOffset:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mTextHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x3f000000    # 0.5f

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v14, v20, v19

    .line 1737
    .local v14, "tmpScal":F
    const/high16 v19, 0x3f000000    # 0.5f

    mul-float v19, v19, v14

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v13, v20, v19

    .line 1738
    .local v13, "sizeScal":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mTextSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v13

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1740
    const/high16 v19, 0x3f400000    # 0.75f

    cmpl-float v19, v14, v19

    if-lez v19, :cond_8

    .line 1741
    const/high16 v19, 0x3f400000    # 0.75f

    sub-float v19, v14, v19

    const/high16 v20, 0x40800000    # 4.0f

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mTextColorHelper:Landroid/widget/NumberPicker$TextColorHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/NumberPicker$TextColorHelper;->mColors:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v8, v0

    .line 1742
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mTextColorHelper:Landroid/widget/NumberPicker$TextColorHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/NumberPicker$TextColorHelper;->mColors:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-le v8, v0, :cond_7

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mTextColorHelper:Landroid/widget/NumberPicker$TextColorHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/NumberPicker$TextColorHelper;->mColors:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v8, v19, -0x1

    .line 1747
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mTextColorHelper:Landroid/widget/NumberPicker$TextColorHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/NumberPicker$TextColorHelper;->mColors:[I

    move-object/from16 v20, v0

    aget v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 1756
    .end local v8    # "index":I
    .end local v13    # "sizeScal":F
    .end local v14    # "tmpScal":F
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1757
    if-eqz v9, :cond_5

    if-eqz v12, :cond_9

    sget v19, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    move/from16 v0, v19

    if-eq v7, v0, :cond_9

    .line 1759
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1768
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    .line 1726
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1704
    .end local v7    # "i":I
    .end local v9    # "scrollSelectorValue":Ljava/lang/String;
    .end local v10    # "selectorIndex":I
    .end local v11    # "selectorIndices":[I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_6
    const/4 v12, 0x1

    .local v12, "showSelectorWheel":Z
    goto/16 :goto_0

    .line 1744
    .end local v12    # "showSelectorWheel":Z
    .restart local v7    # "i":I
    .restart local v8    # "index":I
    .restart local v9    # "scrollSelectorValue":Ljava/lang/String;
    .restart local v10    # "selectorIndex":I
    .restart local v11    # "selectorIndices":[I
    .restart local v13    # "sizeScal":F
    .restart local v14    # "tmpScal":F
    .restart local v17    # "x":F
    .restart local v18    # "y":F
    :cond_7
    if-gez v8, :cond_3

    .line 1745
    const/4 v8, 0x0

    goto :goto_2

    .line 1749
    .end local v8    # "index":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const v20, -0x979798

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 1758
    .end local v13    # "sizeScal":F
    .end local v14    # "tmpScal":F
    :cond_9
    sget v19, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    move/from16 v0, v19

    if-ne v7, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getVisibility()I

    move-result v19

    if-eqz v19, :cond_5

    goto :goto_4

    .line 1762
    :cond_a
    if-eqz v12, :cond_b

    sget v19, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    move/from16 v0, v19

    if-eq v7, v0, :cond_b

    .line 1764
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 1763
    :cond_b
    sget v19, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    move/from16 v0, v19

    if-ne v7, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getVisibility()I

    move-result v19

    if-eqz v19, :cond_5

    goto :goto_6

    .line 1772
    .end local v9    # "scrollSelectorValue":Ljava/lang/String;
    .end local v10    # "selectorIndex":I
    :cond_c
    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 1774
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    move/from16 v16, v0

    .line 1775
    .local v16, "topOfTopDivider":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    move/from16 v19, v0

    add-int v6, v16, v19

    .line 1776
    .local v6, "bottomOfTopDivider":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mRight:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v16

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1777
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1780
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 1781
    .local v5, "bottomOfBottomDivider":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    move/from16 v19, v0

    sub-int v15, v5, v19

    .line 1782
    .local v15, "topOfBottomDivider":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mRight:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v15, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1786
    .end local v5    # "bottomOfBottomDivider":I
    .end local v6    # "bottomOfTopDivider":I
    .end local v15    # "topOfBottomDivider":I
    .end local v16    # "topOfTopDivider":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->isFocused()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 1699
    :cond_e
    :goto_7
    return-void

    .line 1787
    :cond_f
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_7
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1794
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1795
    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1796
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1797
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1798
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1793
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 955
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 958
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 959
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1003
    return v5

    .line 956
    .end local v0    # "action":I
    :cond_0
    return v5

    .line 961
    .restart local v0    # "action":I
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 962
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 963
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iput v1, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 964
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    .line 965
    iput-boolean v5, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 966
    iput-boolean v5, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 968
    iget v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v2, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 969
    iget v1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v1, :cond_1

    .line 970
    iget-object v1, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 971
    const/4 v2, 0x2

    .line 970
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 980
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 981
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    .line 982
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 983
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 984
    invoke-direct {p0, v5}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1000
    :goto_1
    return v4

    .line 973
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v2, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 974
    iget v1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v1, :cond_1

    .line 975
    iget-object v1, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 985
    :cond_3
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    .line 986
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 987
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 988
    :cond_4
    iget v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v2, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 989
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    .line 991
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    .line 990
    invoke-direct {p0, v5, v2, v3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 992
    :cond_5
    iget v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v2, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 993
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    .line 995
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    .line 994
    invoke-direct {p0, v4, v2, v3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 997
    :cond_6
    iput-boolean v4, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 998
    invoke-direct {p0}, Landroid/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    goto :goto_1

    .line 959
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 864
    iget-boolean v8, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v8, :cond_0

    .line 865
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 866
    return-void

    .line 868
    :cond_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v7

    .line 869
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v6

    .line 872
    .local v6, "msrdHght":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 873
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    .line 874
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 875
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 876
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 877
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 878
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/EditText;->layout(IIII)V

    .line 880
    if-eqz p1, :cond_2

    .line 884
    iget-object v8, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 885
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheel()V

    .line 887
    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeFadingEdges()V

    .line 888
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    .line 889
    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 888
    sub-int/2addr v8, v9

    iput v8, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 890
    iget v8, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 891
    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 890
    add-int/2addr v8, v9

    iput v8, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 863
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 897
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 898
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 899
    return-void

    .line 902
    :cond_0
    iget v4, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 903
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 904
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 906
    iget v4, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 908
    .local v3, "widthSize":I
    iget v4, p0, Landroid/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 910
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Landroid/widget/NumberPicker;->setMeasuredDimension(II)V

    .line 896
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1691
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onResolveDrawables(I)V

    .line 1693
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1690
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1008
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v10, :cond_2

    .line 1011
    iget-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_0

    .line 1012
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1014
    :cond_0
    iget-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1015
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1016
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1086
    :cond_1
    :goto_0
    const/4 v10, 0x1

    return v10

    .line 1009
    .end local v0    # "action":I
    :cond_2
    const/4 v10, 0x0

    return v10

    .line 1018
    .restart local v0    # "action":I
    :pswitch_0
    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    if-nez v10, :cond_1

    .line 1021
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1022
    .local v1, "currentMoveY":F
    iget v10, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    .line 1023
    iget v10, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 1024
    .local v2, "deltaDownY":I
    iget v10, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-le v2, v10, :cond_3

    .line 1025
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1026
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1033
    .end local v2    # "deltaDownY":I
    :cond_3
    :goto_1
    iput v1, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    goto :goto_0

    .line 1029
    :cond_4
    iget v10, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 1030
    .local v3, "deltaMoveY":I
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 1031
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_1

    .line 1036
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 1037
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 1038
    iget-object v10, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v10}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 1039
    iget-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1042
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    iget-object v10, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1043
    iget v10, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    mul-int/lit8 v10, v10, 0x3

    int-to-float v10, v10

    const/16 v11, 0x3e8

    invoke-virtual {v9, v11, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1048
    :goto_2
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v7, v10

    .line 1049
    .local v7, "initialVelocity":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_6

    .line 1050
    invoke-direct {p0, v7}, Landroid/widget/NumberPicker;->fling(I)V

    .line 1051
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1082
    :goto_3
    iget-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 1083
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 1045
    .end local v7    # "initialVelocity":I
    :cond_5
    iget v10, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v10, v10

    const/16 v11, 0x3e8

    invoke-virtual {v9, v11, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    goto :goto_2

    .line 1053
    .restart local v7    # "initialVelocity":I
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v6, v10

    .line 1054
    .local v6, "eventY":I
    int-to-float v10, v6

    iget v11, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 1055
    .restart local v3    # "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 1056
    .local v4, "deltaTime":J
    iget v10, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-gt v3, v10, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_a

    .line 1057
    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    if-eqz v10, :cond_7

    .line 1058
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 1059
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->performClick()Z

    .line 1080
    :goto_4
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_3

    .line 1061
    :cond_7
    iget v10, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int v10, v6, v10

    .line 1062
    sget v11, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    .line 1061
    sub-int v8, v10, v11

    .line 1063
    .local v8, "selectorIndexOffset":I
    if-lez v8, :cond_8

    .line 1064
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1065
    iget-object v10, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 1066
    const/4 v11, 0x1

    .line 1065
    invoke-virtual {v10, v11}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 1067
    :cond_8
    if-gez v8, :cond_9

    .line 1068
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1069
    iget-object v10, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 1070
    const/4 v11, 0x2

    .line 1069
    invoke-virtual {v10, v11}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 1074
    :cond_9
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_4

    .line 1078
    .end local v8    # "selectorIndexOffset":I
    :cond_a
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_4

    .line 1016
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 1382
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1383
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0

    .line 1384
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1385
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    .line 1387
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1392
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1393
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    return v0

    .line 1394
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1395
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    .line 1396
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 1398
    :cond_1
    return v1
.end method

.method public scrollBy(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x1

    .line 1236
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1237
    .local v0, "selectorIndices":[I
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v3, :cond_0

    if-lez p2, :cond_0

    .line 1238
    sget v3, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v3, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v3, v4, :cond_0

    .line 1239
    iget v3, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1240
    return-void

    .line 1242
    :cond_0
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v3, :cond_1

    if-gez p2, :cond_1

    .line 1243
    sget v3, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v3, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v3, v4, :cond_1

    .line 1244
    iget v3, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1245
    return-void

    .line 1247
    :cond_1
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v3, p2

    iput v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1249
    iget-object v3, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1250
    sget v3, Landroid/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    add-int/lit8 v3, v3, -0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 1251
    .local v2, "tmpOffset":I
    iget v3, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    mul-int/2addr v4, v2

    add-int v1, v3, v4

    .line 1252
    .local v1, "selectorTextGapHeightTmp":I
    :cond_2
    :goto_0
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, v4

    if-le v3, v1, :cond_3

    .line 1253
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1254
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1255
    sget v3, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v3, v0, v3

    invoke-direct {p0, v3, v5}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1256
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v3, :cond_2

    sget v3, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v3, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v4, v2

    if-gt v3, v4, :cond_2

    .line 1257
    iget v3, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1260
    :cond_3
    :goto_1
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, v4

    neg-int v4, v1

    if-ge v3, v4, :cond_6

    .line 1261
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1262
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1263
    sget v3, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v3, v0, v3

    invoke-direct {p0, v3, v5}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1264
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v3, :cond_3

    sget v3, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v3, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    add-int/2addr v4, v2

    if-lt v3, v4, :cond_3

    .line 1265
    iget v3, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1269
    .end local v1    # "selectorTextGapHeightTmp":I
    .end local v2    # "tmpOffset":I
    :cond_4
    :goto_2
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v3, v4, :cond_5

    .line 1270
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1271
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1272
    sget v3, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v3, v0, v3

    invoke-direct {p0, v3, v5}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1273
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v3, :cond_4

    sget v3, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v3, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v3, v4, :cond_4

    .line 1274
    iget v3, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2

    .line 1277
    :cond_5
    :goto_3
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v4, v4

    if-ge v3, v4, :cond_6

    .line 1278
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1279
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1280
    sget v3, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v3, v0, v3

    invoke-direct {p0, v3, v5}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1281
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v3, :cond_5

    sget v3, Landroid/widget/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v3, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v3, v4, :cond_5

    .line 1282
    iget v3, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_3

    .line 1235
    :cond_6
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1634
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1635
    return-void

    .line 1637
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1638
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1640
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1645
    :goto_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1646
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1647
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1633
    return-void

    .line 1643
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1224
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1225
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1226
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1228
    :cond_0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1229
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1231
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1223
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Landroid/widget/NumberPicker$Formatter;

    .prologue
    .line 1340
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1341
    return-void

    .line 1343
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 1344
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1345
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1339
    return-void
.end method

.method public setMaxValue(I)V
    .locals 2
    .param p1, "maxValue"    # I

    .prologue
    .line 1598
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    .line 1599
    return-void

    .line 1601
    :cond_0
    if-gez p1, :cond_1

    .line 1602
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1604
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1605
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ge v0, v1, :cond_2

    .line 1606
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iput v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1608
    :cond_2
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1609
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1610
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1611
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1612
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1597
    return-void
.end method

.method public setMinValue(I)V
    .locals 2
    .param p1, "minValue"    # I

    .prologue
    .line 1561
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    .line 1562
    return-void

    .line 1564
    :cond_0
    if-gez p1, :cond_1

    .line 1565
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1567
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1568
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    if-le v0, v1, :cond_2

    .line 1569
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iput v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1571
    :cond_2
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1572
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1573
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1574
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1575
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1560
    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1529
    iput-wide p1, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 1528
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Landroid/widget/NumberPicker$OnScrollListener;

    .prologue
    .line 1325
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    .line 1324
    return-void
.end method

.method public setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Landroid/widget/NumberPicker$OnValueChangeListener;

    .prologue
    .line 1316
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 1315
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1377
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1376
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1501
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 1502
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1500
    return-void
.end method
