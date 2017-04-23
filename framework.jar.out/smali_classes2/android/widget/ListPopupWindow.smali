.class public Landroid/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListPopupWindow$ForwardingListener;,
        Landroid/widget/ListPopupWindow$DropDownListView;,
        Landroid/widget/ListPopupWindow$PopupDataSetObserver;,
        Landroid/widget/ListPopupWindow$ListSelectorHider;,
        Landroid/widget/ListPopupWindow$ResizePopupRunnable;,
        Landroid/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroid/widget/ListPopupWindow$PopupScrollListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mForceIgnoreOutsideTouch:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLayoutDirection:I

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static synthetic -get0(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$DropDownListView;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    const/4 v0, 0x0

    const v1, 0x10102ff

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 194
    const v0, 0x10102ff

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, -0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v2, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    .line 83
    iput v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 86
    const/16 v2, 0x3ea

    iput v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 89
    iput v4, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    .line 91
    iput-boolean v4, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 92
    iput-boolean v4, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 93
    const v2, 0x7fffffff

    iput v2, p0, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 96
    iput v4, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    .line 107
    new-instance v2, Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$ResizePopupRunnable;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    .line 108
    new-instance v2, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupTouchInterceptor;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 109
    new-instance v2, Landroid/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupScrollListener;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    .line 110
    new-instance v2, Landroid/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$ListSelectorHider;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    .line 115
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 219
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 220
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 222
    sget-object v2, Lcom/android/internal/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 224
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 226
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 228
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v2, :cond_0

    .line 229
    iput-boolean v5, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 231
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 234
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 236
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 237
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    iput v2, p0, Landroid/widget/ListPopupWindow;->mLayoutDirection:I

    .line 218
    return-void
.end method

.method private buildDropDown()I
    .locals 24

    .prologue
    .line 1055
    const/16 v18, 0x0

    .line 1057
    .local v18, "otherHeights":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    if-nez v2, :cond_8

    .line 1058
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1066
    .local v9, "context":Landroid/content/Context;
    new-instance v2, Landroid/widget/ListPopupWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/ListPopupWindow$2;-><init>(Landroid/widget/ListPopupWindow;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1076
    new-instance v4, Landroid/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListPopupWindow;->mModal:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_0
    invoke-direct {v4, v9, v2}, Landroid/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 1077
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1078
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1080
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setFocusable(Z)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    new-instance v4, Landroid/widget/ListPopupWindow$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/ListPopupWindow$3;-><init>(Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_1

    .line 1103
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1106
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 1108
    .local v10, "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1109
    .local v14, "hintView":Landroid/view/View;
    if-eqz v14, :cond_2

    .line 1112
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1113
    .local v12, "hintContainer":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1115
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 1116
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1115
    invoke-direct {v13, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1119
    .local v13, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v2, :pswitch_data_0

    .line 1131
    const-string/jumbo v2, "ListPopupWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid hint position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ltz v2, :cond_7

    .line 1140
    const/high16 v21, -0x80000000

    .line 1141
    .local v21, "widthMode":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    move/from16 v22, v0

    .line 1146
    .local v22, "widthSize":I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 1147
    .local v23, "widthSpec":I
    const/4 v11, 0x0

    .line 1148
    .local v11, "heightSpec":I
    const/4 v2, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/view/View;->measure(II)V

    .line 1150
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 1151
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    .line 1152
    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1151
    add-int v18, v2, v4

    .line 1154
    move-object v10, v12

    .line 1157
    .end local v11    # "heightSpec":I
    .end local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "widthMode":I
    .end local v22    # "widthSize":I
    .end local v23    # "widthSpec":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1171
    .end local v9    # "context":Landroid/content/Context;
    .end local v14    # "hintView":Landroid/view/View;
    :cond_3
    :goto_3
    const/16 v19, 0x0

    .line 1172
    .local v19, "padding":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1173
    .local v8, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_9

    .line 1174
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1175
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int v19, v2, v4

    .line 1179
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v2, :cond_4

    .line 1180
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1188
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_a

    const/4 v15, 0x1

    .line 1189
    .local v15, "ignoreBottomDecorations":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1190
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1189
    invoke-virtual {v2, v4, v5, v15}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v17

    .line 1192
    .local v17, "maxHeight":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_b

    .line 1193
    :cond_5
    add-int v2, v17, v19

    return v2

    .line 1076
    .end local v8    # "background":Landroid/graphics/drawable/Drawable;
    .end local v10    # "dropDownView":Landroid/view/ViewGroup;
    .end local v15    # "ignoreBottomDecorations":Z
    .end local v17    # "maxHeight":I
    .end local v19    # "padding":I
    .restart local v9    # "context":Landroid/content/Context;
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1121
    .restart local v10    # "dropDownView":Landroid/view/ViewGroup;
    .restart local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v14    # "hintView":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v12, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1122
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1126
    :pswitch_1
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1127
    invoke-virtual {v12, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1143
    :cond_7
    const/16 v21, 0x0

    .line 1144
    .restart local v21    # "widthMode":I
    const/16 v22, 0x0

    .restart local v22    # "widthSize":I
    goto/16 :goto_2

    .line 1159
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "dropDownView":Landroid/view/ViewGroup;
    .end local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "hintView":Landroid/view/View;
    .end local v21    # "widthMode":I
    .end local v22    # "widthSize":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 1160
    .restart local v10    # "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v20, v0

    .line 1161
    .local v20, "view":Landroid/view/View;
    if-eqz v20, :cond_3

    .line 1163
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 1164
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    .line 1165
    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1164
    add-int v18, v2, v4

    goto/16 :goto_3

    .line 1183
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "view":Landroid/view/View;
    .restart local v8    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v19    # "padding":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_4

    .line 1188
    :cond_a
    const/4 v15, 0x0

    .restart local v15    # "ignoreBottomDecorations":Z
    goto :goto_5

    .line 1197
    .restart local v17    # "maxHeight":I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    packed-switch v2, :pswitch_data_1

    .line 1211
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1214
    .local v3, "childWidthSpec":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 1215
    sub-int v6, v17, v18

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, -0x1

    .line 1214
    invoke-virtual/range {v2 .. v7}, Landroid/widget/ListPopupWindow$DropDownListView;->measureHeightOfChildren(IIIII)I

    move-result v16

    .line 1218
    .local v16, "listContent":I
    if-lez v16, :cond_c

    add-int v18, v18, v19

    .line 1220
    :cond_c
    add-int v2, v16, v18

    return v2

    .line 1200
    .end local v3    # "childWidthSpec":I
    .end local v16    # "listContent":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1201
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    .line 1200
    sub-int/2addr v2, v4

    .line 1202
    const/high16 v4, -0x80000000

    .line 1199
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .restart local v3    # "childWidthSpec":I
    goto :goto_6

    .line 1206
    .end local v3    # "childWidthSpec":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1207
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    .line 1206
    sub-int/2addr v2, v4

    .line 1208
    const/high16 v4, 0x40000000    # 2.0f

    .line 1205
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .restart local v3    # "childWidthSpec":I
    goto :goto_6

    .line 1119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1197
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private removePromptView()V
    .locals 3

    .prologue
    .line 697
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 698
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 699
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 700
    check-cast v0, Landroid/view/ViewGroup;

    .line 701
    .local v0, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 696
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .prologue
    .line 753
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 754
    .local v0, "list":Landroid/widget/ListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    .line 756
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->-set0(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 757
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->hideSelector()V

    .line 758
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->requestLayout()V

    .line 752
    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 1039
    new-instance v0, Landroid/widget/ListPopupWindow$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/ListPopupWindow$1;-><init>(Landroid/widget/ListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 680
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 681
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->removePromptView()V

    .line 682
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 683
    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 684
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 679
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    const/4 v0, 0x0

    return-object v0

    .line 804
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 827
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 830
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    const/4 v0, -0x1

    return v0

    .line 817
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 840
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    const/4 v0, 0x0

    return-object v0

    .line 843
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 451
    const/4 v0, 0x0

    return v0

    .line 453
    :cond_0
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v12, 0x14

    const/16 v11, 0x13

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 876
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 882
    const/16 v7, 0x3e

    if-eq p1, v7, :cond_0

    .line 883
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v7

    if-gez v7, :cond_1

    .line 884
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 956
    :cond_0
    :goto_0
    return v10

    .line 885
    :cond_1
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v4

    .line 888
    .local v4, "curIndex":I
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v2, 0x0

    .line 890
    .local v2, "below":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 893
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 894
    .local v5, "firstItem":I
    const/high16 v6, -0x80000000

    .line 896
    .local v6, "lastItem":I
    if-eqz v0, :cond_2

    .line 897
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 898
    .local v1, "allEnabled":Z
    if-eqz v1, :cond_5

    const/4 v5, 0x0

    .line 900
    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .line 904
    .end local v1    # "allEnabled":Z
    :cond_2
    :goto_3
    if-eqz v2, :cond_7

    if-ne p1, v11, :cond_7

    if-gt v4, v5, :cond_7

    .line 908
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 909
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 910
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 911
    return v9

    .line 888
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "below":Z
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "below":Z
    goto :goto_1

    .line 899
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "allEnabled":Z
    .restart local v5    # "firstItem":I
    .restart local v6    # "lastItem":I
    :cond_5
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v7, v10, v9}, Landroid/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v5

    goto :goto_2

    .line 901
    :cond_6
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8, v10}, Landroid/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v6

    goto :goto_3

    .line 905
    .end local v1    # "allEnabled":Z
    :cond_7
    if-nez v2, :cond_8

    if-ne p1, v12, :cond_8

    if-ge v4, v6, :cond_3

    .line 915
    :cond_8
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-static {v7, v10}, Landroid/widget/ListPopupWindow$DropDownListView;->-set0(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 918
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v7, p1, p2}, Landroid/widget/ListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 921
    .local v3, "consumed":Z
    if-eqz v3, :cond_9

    .line 924
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 929
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow$DropDownListView;->requestFocusFromTouch()Z

    .line 930
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 932
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 939
    :sswitch_0
    return v9

    .line 942
    :cond_9
    if-eqz v2, :cond_a

    if-ne p1, v12, :cond_a

    .line 945
    if-ne v4, v6, :cond_0

    .line 946
    return v9

    .line 948
    :cond_a
    if-nez v2, :cond_0

    if-ne p1, v11, :cond_0

    .line 949
    if-ne v4, v5, :cond_0

    .line 950
    return v9

    .line 932
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 994
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 997
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 998
    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 999
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1000
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 1001
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1003
    :cond_0
    return v4

    .line 1004
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 1005
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1006
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 1007
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1009
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1015
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    return v3

    .line 1010
    .restart local v0    # "anchorView":Landroid/view/View;
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1011
    return v4
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 970
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_1

    .line 971
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 972
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 977
    :cond_0
    return v0

    .line 979
    .end local v0    # "consumed":Z
    :cond_1
    return v2
.end method

.method public performItemClick(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 785
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 787
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 788
    .local v1, "list":Landroid/widget/ListPopupWindow$DropDownListView;
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 789
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 790
    .local v6, "adapter":Landroid/widget/ListAdapter;
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 792
    .end local v1    # "list":Landroid/widget/ListPopupWindow$DropDownListView;
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 794
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public postShow()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 580
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 248
    new-instance v0, Landroid/widget/ListPopupWindow$PopupDataSetObserver;

    invoke-direct {v0, p0, v1}, Landroid/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupDataSetObserver;)V

    iput-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 252
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 253
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 257
    :cond_1
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    :cond_2
    return-void

    .line 249
    :cond_3
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 427
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 426
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    .prologue
    .line 398
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 397
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 389
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 500
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 501
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 502
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 503
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 499
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .param p1, "dropDownAlwaysVisible"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 330
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 473
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    .line 472
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 315
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 522
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    .line 521
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 443
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 442
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 719
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 718
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 861
    iput p1, p0, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 860
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 373
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 372
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    .line 296
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 294
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 693
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 692
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 546
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 545
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 557
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 556
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 272
    iput p1, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    .line 271
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1, "prompt"    # Landroid/view/View;

    .prologue
    .line 567
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 568
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    .line 569
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->removePromptView()V

    .line 571
    :cond_0
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 572
    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 566
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 738
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 739
    .local v0, "list":Landroid/widget/ListPopupWindow$DropDownListView;
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 740
    invoke-static {v0, v2}, Landroid/widget/ListPopupWindow$DropDownListView;->-set0(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 741
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 742
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    .line 737
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 354
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 353
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 462
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 461
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 490
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 489
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .prologue
    .line 535
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 534
    return-void
.end method

.method public show()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x2

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 589
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->buildDropDown()I

    move-result v6

    .line 591
    .local v6, "height":I
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v8

    .line 592
    .local v8, "noInputMethod":Z
    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setAllowScrollingAnchorParent(Z)V

    .line 593
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 595
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 597
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_3

    .line 600
    const/4 v9, -0x1

    .line 608
    .local v9, "widthSpec":I
    :goto_1
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v5, :cond_9

    .line 611
    if-eqz v8, :cond_5

    move v7, v6

    .line 612
    .local v7, "heightSpec":I
    :goto_2
    if-eqz v8, :cond_7

    .line 613
    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_6

    move v0, v5

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 615
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 627
    :goto_4
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-eqz v3, :cond_b

    :cond_0
    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 629
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 630
    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-gez v9, :cond_c

    move v4, v5

    .line 631
    :goto_6
    if-gez v7, :cond_d

    .line 629
    :goto_7
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 588
    :cond_1
    :goto_8
    return-void

    .end local v7    # "heightSpec":I
    .end local v9    # "widthSpec":I
    :cond_2
    move v0, v2

    .line 592
    goto :goto_0

    .line 601
    :cond_3
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v4, :cond_4

    .line 602
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .restart local v9    # "widthSpec":I
    goto :goto_1

    .line 604
    .end local v9    # "widthSpec":I
    :cond_4
    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .restart local v9    # "widthSpec":I
    goto :goto_1

    .line 611
    :cond_5
    const/4 v7, -0x1

    .restart local v7    # "heightSpec":I
    goto :goto_2

    :cond_6
    move v0, v1

    .line 614
    goto :goto_3

    .line 617
    :cond_7
    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_8

    move v0, v5

    :goto_9
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 619
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_4

    :cond_8
    move v0, v1

    .line 618
    goto :goto_9

    .line 621
    .end local v7    # "heightSpec":I
    :cond_9
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v4, :cond_a

    .line 622
    move v7, v6

    .restart local v7    # "heightSpec":I
    goto :goto_4

    .line 624
    .end local v7    # "heightSpec":I
    :cond_a
    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    .restart local v7    # "heightSpec":I
    goto :goto_4

    :cond_b
    move v1, v2

    .line 627
    goto :goto_5

    :cond_c
    move v4, v9

    .line 630
    goto :goto_6

    :cond_d
    move v5, v7

    .line 631
    goto :goto_7

    .line 634
    .end local v7    # "heightSpec":I
    .end local v9    # "widthSpec":I
    :cond_e
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_12

    .line 635
    const/4 v9, -0x1

    .line 645
    .restart local v9    # "widthSpec":I
    :goto_a
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v5, :cond_14

    .line 646
    const/4 v7, -0x1

    .line 655
    .restart local v7    # "heightSpec":I
    :goto_b
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 656
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 657
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClipToScreenEnabled(Z)V

    .line 661
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_f

    iget-boolean v3, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-eqz v3, :cond_16

    :cond_f
    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 662
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 663
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 664
    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v4, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    .line 663
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 665
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 667
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 668
    :cond_10
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 670
    :cond_11
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_1

    .line 671
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8

    .line 637
    .end local v7    # "heightSpec":I
    .end local v9    # "widthSpec":I
    :cond_12
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v4, :cond_13

    .line 638
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .restart local v9    # "widthSpec":I
    goto :goto_a

    .line 640
    .end local v9    # "widthSpec":I
    :cond_13
    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .restart local v9    # "widthSpec":I
    goto :goto_a

    .line 648
    :cond_14
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v4, :cond_15

    .line 649
    move v7, v6

    .restart local v7    # "heightSpec":I
    goto :goto_b

    .line 651
    .end local v7    # "heightSpec":I
    :cond_15
    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    .restart local v7    # "heightSpec":I
    goto :goto_b

    :cond_16
    move v1, v2

    .line 661
    goto :goto_c
.end method
