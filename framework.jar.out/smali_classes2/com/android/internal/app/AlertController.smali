.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$ButtonHandler;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$CheckedItemAdapter;,
        Lcom/android/internal/app/AlertController$1;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/internal/app/AlertController;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/internal/app/AlertController;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/internal/app/AlertController;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/app/AlertController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/app/AlertController;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/app/AlertController;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v4, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 102
    iput v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 114
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 123
    iput v4, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 127
    new-instance v1, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 184
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 185
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 186
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 187
    new-instance v1, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 190
    sget-object v1, Lcom/android/internal/R$styleable;->AlertDialog:[I

    .line 189
    const/4 v2, 0x0

    .line 190
    const v3, 0x101005d

    .line 189
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 193
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xa

    const v2, 0x1090026

    .line 192
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 195
    const/16 v1, 0xb

    .line 194
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    .line 197
    const/16 v1, 0xc

    const v2, 0x10900d2

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 200
    const/16 v1, 0xd

    .line 201
    const v2, 0x1090013

    .line 199
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 203
    const/16 v1, 0xe

    .line 204
    const v2, 0x1090012

    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 206
    const/16 v1, 0xf

    .line 207
    const v2, 0x1090011

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 209
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    return v4

    .line 217
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 218
    return v3

    :cond_1
    move-object v1, p0

    .line 221
    check-cast v1, Landroid/view/ViewGroup;

    .line 222
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 223
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 224
    add-int/lit8 v0, v0, -0x1

    .line 225
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 226
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    return v4

    .line 231
    :cond_3
    return v3
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v5, 0x0

    .line 767
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 768
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 769
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 770
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x10202f5

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 772
    .local v0, "leftSpacer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 775
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x10202f6

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 776
    .local v2, "rightSpacer":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 777
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 766
    :cond_1
    return-void
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 698
    if-eqz p1, :cond_0

    .line 699
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 701
    :cond_0
    if-eqz p2, :cond_1

    .line 702
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 697
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 699
    goto :goto_0

    :cond_3
    move v1, v2

    .line 702
    goto :goto_1
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "customPanel"    # Landroid/view/View;
    .param p2, "defaultPanel"    # Landroid/view/View;

    .prologue
    .line 467
    if-nez p1, :cond_1

    .line 469
    instance-of v1, p2, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 470
    check-cast p2, Landroid/view/ViewStub;

    .end local p2    # "defaultPanel":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 473
    .restart local p2    # "defaultPanel":Landroid/view/View;
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "defaultPanel":Landroid/view/View;
    return-object p2

    .line 477
    .restart local p2    # "defaultPanel":Landroid/view/View;
    :cond_1
    if-eqz p2, :cond_2

    .line 478
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 479
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 480
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 485
    :cond_2
    instance-of v1, p1, Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    .line 486
    check-cast p1, Landroid/view/ViewStub;

    .end local p1    # "customPanel":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 489
    .restart local p1    # "customPanel":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "customPanel":Landroid/view/View;
    return-object p1
.end method

.method private selectContentView()I
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 245
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return v0

    .line 247
    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 248
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    return v0

    .line 251
    :cond_1
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return v0
.end method

.method private setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 24
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "topPanel"    # Landroid/view/View;
    .param p3, "contentPanel"    # Landroid/view/View;
    .param p4, "customPanel"    # Landroid/view/View;
    .param p5, "buttonPanel"    # Landroid/view/View;
    .param p6, "hasTitle"    # Z
    .param p7, "hasCustomView"    # Z
    .param p8, "hasButtons"    # Z

    .prologue
    .line 783
    const/4 v10, 0x0

    .line 784
    .local v10, "fullDark":I
    const/16 v19, 0x0

    .line 785
    .local v19, "topDark":I
    const/4 v7, 0x0

    .line 786
    .local v7, "centerDark":I
    const/4 v4, 0x0

    .line 787
    .local v4, "bottomDark":I
    const/4 v9, 0x0

    .line 788
    .local v9, "fullBright":I
    const/16 v18, 0x0

    .line 789
    .local v18, "topBright":I
    const/4 v6, 0x0

    .line 790
    .local v6, "centerBright":I
    const/4 v3, 0x0

    .line 791
    .local v3, "bottomBright":I
    const/4 v5, 0x0

    .line 796
    .local v5, "bottomMedium":I
    const/16 v22, 0x12

    const/16 v23, 0x1

    .line 795
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 797
    .local v15, "needsDefaultBackgrounds":Z
    if-eqz v15, :cond_0

    .line 798
    const v10, 0x108054d

    .line 799
    const v19, 0x108055b

    .line 800
    const v7, 0x108054a

    .line 801
    const v4, 0x1080547

    .line 802
    const v9, 0x108054c

    .line 803
    const v18, 0x108055a

    .line 804
    const v6, 0x1080549

    .line 805
    const v3, 0x1080546

    .line 806
    const v5, 0x1080548

    .line 809
    :cond_0
    const/16 v22, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 810
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    .line 811
    const/16 v22, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 812
    const/16 v22, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 822
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v21, v0

    .line 823
    .local v21, "views":[Landroid/view/View;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v13, v0, [Z

    .line 824
    .local v13, "light":[Z
    const/4 v12, 0x0

    .line 825
    .local v12, "lastView":Landroid/view/View;
    const/4 v11, 0x0

    .line 827
    .local v11, "lastLight":Z
    const/16 v16, 0x0

    .line 828
    .local v16, "pos":I
    if-eqz p6, :cond_1

    .line 829
    aput-object p2, v21, v16

    .line 830
    const/16 v22, 0x0

    aput-boolean v22, v13, v16

    .line 831
    const/16 v16, 0x1

    .line 839
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/16 p3, 0x0

    .end local p3    # "contentPanel":Landroid/view/View;
    :cond_2
    aput-object p3, v21, v16

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    const/16 v22, 0x1

    :goto_0
    aput-boolean v22, v13, v16

    .line 841
    add-int/lit8 v16, v16, 0x1

    .line 843
    if-eqz p7, :cond_3

    .line 844
    aput-object p4, v21, v16

    .line 845
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    move/from16 v22, v0

    aput-boolean v22, v13, v16

    .line 846
    add-int/lit8 v16, v16, 0x1

    .line 849
    :cond_3
    if-eqz p8, :cond_4

    .line 850
    aput-object p5, v21, v16

    .line 851
    const/16 v22, 0x1

    aput-boolean v22, v13, v16

    .line 854
    :cond_4
    const/16 v17, 0x0

    .line 855
    .local v17, "setView":Z
    const/16 v16, 0x0

    .end local v11    # "lastLight":Z
    .end local v12    # "lastView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 856
    aget-object v20, v21, v16

    .line 857
    .local v20, "v":Landroid/view/View;
    if-nez v20, :cond_6

    .line 855
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 840
    .end local v17    # "setView":Z
    .end local v20    # "v":Landroid/view/View;
    .restart local v11    # "lastLight":Z
    .restart local v12    # "lastView":Landroid/view/View;
    :cond_5
    const/16 v22, 0x0

    goto :goto_0

    .line 861
    .end local v11    # "lastLight":Z
    .end local v12    # "lastView":Landroid/view/View;
    .restart local v17    # "setView":Z
    .restart local v20    # "v":Landroid/view/View;
    :cond_6
    if-eqz v12, :cond_7

    .line 862
    if-nez v17, :cond_9

    .line 863
    if-eqz v11, :cond_8

    move/from16 v22, v18

    :goto_3
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 867
    :goto_4
    const/16 v17, 0x1

    .line 870
    :cond_7
    move-object/from16 v12, v20

    .line 871
    .local v12, "lastView":Landroid/view/View;
    aget-boolean v11, v13, v16

    .local v11, "lastLight":Z
    goto :goto_2

    .end local v11    # "lastLight":Z
    .end local v12    # "lastView":Landroid/view/View;
    :cond_8
    move/from16 v22, v19

    .line 863
    goto :goto_3

    .line 865
    :cond_9
    if-eqz v11, :cond_a

    move/from16 v22, v6

    :goto_5
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_a
    move/from16 v22, v7

    goto :goto_5

    .line 874
    .end local v20    # "v":Landroid/view/View;
    :cond_b
    if-eqz v12, :cond_c

    .line 875
    if-eqz v17, :cond_10

    .line 876
    const/16 v22, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 877
    const/16 v22, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 878
    const/16 v22, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 883
    if-eqz v11, :cond_f

    if-eqz p8, :cond_e

    move/from16 v22, v5

    .line 882
    :goto_6
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 892
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 893
    .local v14, "listView":Landroid/widget/ListView;
    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 895
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 896
    .local v8, "checkedItem":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-le v8, v0, :cond_d

    .line 897
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v8, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 898
    invoke-virtual {v14, v8}, Landroid/widget/ListView;->setSelection(I)V

    .line 782
    .end local v8    # "checkedItem":I
    :cond_d
    return-void

    .end local v14    # "listView":Landroid/widget/ListView;
    :cond_e
    move/from16 v22, v3

    .line 883
    goto :goto_6

    :cond_f
    move/from16 v22, v4

    goto :goto_6

    .line 885
    :cond_10
    const/16 v22, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 886
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 888
    if-eqz v11, :cond_11

    move/from16 v22, v9

    :goto_8
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    :cond_11
    move/from16 v22, v10

    goto :goto_8
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 710
    const/4 v1, 0x0

    .line 711
    .local v1, "whichButtons":I
    const v2, 0x1020019

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 712
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 715
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 722
    :goto_0
    const v2, 0x102001a

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 723
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 726
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 734
    :goto_1
    const v2, 0x102001b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 735
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 738
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 746
    :goto_2
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 707
    const/4 v2, 0x1

    .line 751
    if-ne v1, v2, :cond_5

    .line 752
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 760
    :cond_0
    :goto_3
    if-eqz v1, :cond_7

    const/4 v0, 0x1

    .line 761
    .local v0, "hasButtons":Z
    :goto_4
    if-nez v0, :cond_1

    .line 762
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 706
    :cond_1
    return-void

    .line 717
    .end local v0    # "hasButtons":Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 719
    const/4 v1, 0x1

    goto :goto_0

    .line 728
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 731
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 740
    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 743
    or-int/lit8 v1, v1, 0x4

    goto :goto_2

    .line 708
    :cond_5
    const/4 v2, 0x2

    .line 753
    if-ne v1, v2, :cond_6

    .line 754
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 709
    :cond_6
    const/4 v2, 0x4

    .line 755
    if-ne v1, v2, :cond_0

    .line 756
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 760
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "hasButtons":Z
    goto :goto_4
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    .line 670
    const v2, 0x10202f8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 671
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 674
    const v2, 0x102000b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 675
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 676
    return-void

    .line 679
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 680
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    :goto_0
    return-void

    .line 682
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 683
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 685
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_2

    .line 686
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 687
    .local v1, "scrollParent":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 688
    .local v0, "childIndex":I
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 689
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 690
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 689
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 692
    .end local v0    # "childIndex":I
    .end local v1    # "scrollParent":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v7, 0x20000

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 591
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 592
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 600
    :goto_0
    if-eqz v1, :cond_4

    const/4 v2, 0x1

    .line 601
    .local v2, "hasCustomView":Z
    :goto_1
    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 606
    :goto_2
    if-eqz v2, :cond_6

    .line 607
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x102002b

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 608
    .local v0, "custom":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    iget-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v4, :cond_0

    .line 612
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iget v5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iget v6, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iget v7, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 611
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 615
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_1

    .line 616
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 589
    .end local v0    # "custom":Landroid/widget/FrameLayout;
    :cond_1
    :goto_3
    return-void

    .line 593
    .end local v2    # "hasCustomView":Z
    :cond_2
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    if-eqz v4, :cond_3

    .line 594
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 595
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .local v1, "customView":Landroid/view/View;
    goto :goto_0

    .line 597
    .end local v1    # "customView":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    const/4 v1, 0x0

    .local v1, "customView":Landroid/view/View;
    goto :goto_0

    .line 600
    .end local v1    # "customView":Landroid/view/View;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "hasCustomView":Z
    goto :goto_1

    .line 602
    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setFlags(II)V

    goto :goto_2

    .line 619
    :cond_6
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3
.end method

.method private setupDecor()V
    .locals 4

    .prologue
    .line 436
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 437
    .local v0, "decor":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x10202ef

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 438
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 439
    new-instance v2, Lcom/android/internal/app/AlertController$2;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/app/AlertController$2;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 451
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 452
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 435
    :cond_0
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x10202f1

    const/4 v5, 0x0

    const/16 v8, 0x8

    .line 624
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 626
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 627
    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 626
    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 629
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 632
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 633
    .local v2, "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 623
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "titleTemplate":Landroid/view/View;
    :goto_0
    return-void

    .line 635
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 637
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 638
    .local v0, "hasTextTitle":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 640
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x10202f2

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 641
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget v3, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-eqz v3, :cond_2

    .line 647
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 637
    .end local v0    # "hasTextTitle":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "hasTextTitle":Z
    goto :goto_1

    .line 648
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 649
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 653
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    .line 654
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    .line 655
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v6

    .line 656
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    .line 653
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 657
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 661
    :cond_4
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 662
    .restart local v2    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 664
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupView()V
    .locals 30

    .prologue
    .line 493
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v26, 0x10202ef

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 494
    .local v24, "parentPanel":Landroid/view/View;
    const v4, 0x10202f0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 495
    .local v19, "defaultTopPanel":Landroid/view/View;
    const v4, 0x10202f7

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 496
    .local v18, "defaultContentPanel":Landroid/view/View;
    const v4, 0x10202f4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 500
    .local v17, "defaultButtonPanel":Landroid/view/View;
    const v4, 0x10202f9

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 501
    .local v8, "customPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 503
    const v4, 0x10202f0

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 504
    .local v16, "customTopPanel":Landroid/view/View;
    const v4, 0x10202f7

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 505
    .local v15, "customContentPanel":Landroid/view/View;
    const v4, 0x10202f4

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 508
    .local v14, "customButtonPanel":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 509
    .local v6, "topPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    .line 510
    .local v7, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v9

    .line 512
    .local v9, "buttonPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 513
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 514
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 516
    if-eqz v8, :cond_9

    .line 517
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v26, 0x8

    move/from16 v0, v26

    if-eq v4, v0, :cond_8

    const/4 v11, 0x1

    .line 518
    .local v11, "hasCustomPanel":Z
    :goto_0
    if-eqz v6, :cond_b

    .line 519
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v26, 0x8

    move/from16 v0, v26

    if-eq v4, v0, :cond_a

    const/4 v10, 0x1

    .line 520
    .local v10, "hasTopPanel":Z
    :goto_1
    if-eqz v9, :cond_d

    .line 521
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v26, 0x8

    move/from16 v0, v26

    if-eq v4, v0, :cond_c

    const/4 v12, 0x1

    .line 524
    .local v12, "hasButtonPanel":Z
    :goto_2
    if-nez v12, :cond_1

    .line 525
    if-eqz v7, :cond_0

    .line 526
    const v4, 0x10202fd

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 527
    .local v25, "spacer":Landroid/view/View;
    if-eqz v25, :cond_0

    .line 528
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 531
    .end local v25    # "spacer":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 534
    :cond_1
    if-eqz v10, :cond_4

    .line 536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v4, :cond_2

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 542
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_e

    .line 543
    :cond_3
    const v4, 0x10202f3

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 548
    .local v20, "divider":Landroid/view/View;
    :goto_3
    if-eqz v20, :cond_4

    .line 549
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 554
    .end local v20    # "divider":Landroid/view/View;
    :cond_4
    if-nez v11, :cond_5

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 556
    .local v13, "content":Landroid/view/View;
    :goto_4
    if-eqz v13, :cond_5

    .line 557
    if-eqz v10, :cond_10

    const/4 v4, 0x1

    move/from16 v26, v4

    .line 558
    :goto_5
    if-eqz v12, :cond_11

    const/4 v4, 0x2

    .line 557
    :goto_6
    or-int v21, v26, v4

    .line 560
    .local v21, "indicators":I
    const/4 v4, 0x3

    .line 559
    move/from16 v0, v21

    invoke-virtual {v13, v0, v4}, Landroid/view/View;->setScrollIndicators(II)V

    .line 565
    .end local v13    # "content":Landroid/view/View;
    .end local v21    # "indicators":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v10, :cond_12

    .line 576
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 577
    sget-object v26, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const/16 v27, 0x0

    const v28, 0x101005d

    const/16 v29, 0x0

    .line 576
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 580
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->lenovoBlurBackgroundType:I

    if-nez v4, :cond_7

    move-object/from16 v4, p0

    .line 581
    invoke-direct/range {v4 .. v12}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 586
    :cond_7
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 492
    return-void

    .line 517
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "hasTopPanel":Z
    .end local v11    # "hasCustomPanel":Z
    .end local v12    # "hasButtonPanel":Z
    :cond_8
    const/4 v11, 0x0

    .restart local v11    # "hasCustomPanel":Z
    goto/16 :goto_0

    .line 516
    .end local v11    # "hasCustomPanel":Z
    :cond_9
    const/4 v11, 0x0

    .restart local v11    # "hasCustomPanel":Z
    goto/16 :goto_0

    .line 519
    :cond_a
    const/4 v10, 0x0

    .restart local v10    # "hasTopPanel":Z
    goto/16 :goto_1

    .line 518
    .end local v10    # "hasTopPanel":Z
    :cond_b
    const/4 v10, 0x0

    .restart local v10    # "hasTopPanel":Z
    goto/16 :goto_1

    .line 521
    :cond_c
    const/4 v12, 0x0

    .restart local v12    # "hasButtonPanel":Z
    goto/16 :goto_2

    .line 520
    .end local v12    # "hasButtonPanel":Z
    :cond_d
    const/4 v12, 0x0

    .restart local v12    # "hasButtonPanel":Z
    goto/16 :goto_2

    .line 542
    :cond_e
    if-nez v11, :cond_3

    .line 545
    const v4, 0x10202fb

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .restart local v20    # "divider":Landroid/view/View;
    goto :goto_3

    .line 555
    .end local v20    # "divider":Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .restart local v13    # "content":Landroid/view/View;
    goto :goto_4

    .line 557
    :cond_10
    const/4 v4, 0x0

    move/from16 v26, v4

    goto :goto_5

    .line 558
    :cond_11
    const/4 v4, 0x0

    goto :goto_6

    .line 565
    .end local v13    # "content":Landroid/view/View;
    :cond_12
    if-eqz v7, :cond_6

    .line 566
    if-eqz v12, :cond_13

    .line 567
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v26, 0x9080045

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 568
    .local v22, "paddingTop":I
    const/4 v4, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v22

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v7, v4, v0, v1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_7

    .line 570
    .end local v22    # "paddingTop":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v26, 0x9080045

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 571
    .local v23, "paddingVertical":I
    const/4 v4, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v7, v4, v0, v1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_7
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 179
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1160017

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 180
    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 413
    packed-switch p1, :pswitch_data_0

    .line 421
    const/4 v0, 0x0

    return-object v0

    .line 415
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0

    .line 417
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    .line 419
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0

    .line 413
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 399
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 400
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 401
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 237
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->selectContentView()I

    move-result v0

    .line 238
    .local v0, "contentView":I
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 239
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 240
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupDecor()V

    .line 234
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 329
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 333
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 337
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 327
    :goto_0
    return-void

    .line 341
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 342
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 346
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 347
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0
    .param p1, "layoutHint"    # I

    .prologue
    .line 311
    iput p1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 310
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 264
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 363
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 365
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 366
    if-eqz p1, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 381
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 383
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 384
    if-eqz p1, :cond_1

    .line 385
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 405
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 404
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 270
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 256
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 280
    iput p1, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 278
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 288
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 289
    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 290
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 287
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 301
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 302
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 303
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 304
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 297
    return-void
.end method
