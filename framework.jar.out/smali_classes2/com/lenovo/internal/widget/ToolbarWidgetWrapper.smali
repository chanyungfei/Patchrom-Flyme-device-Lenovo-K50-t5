.class public Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Lcom/lenovo/internal/widget/DecorToolbar;


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ToolbarWidgetWrapper"


# instance fields
.field private mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field private mToolbar:Llenovo/widget/Toolbar;

.field private mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;


# direct methods
.method static synthetic -get0(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    return v0
.end method

.method static synthetic -get1(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get2(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Llenovo/widget/Toolbar;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    return-object v0
.end method

.method static synthetic -get3(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)Lcom/lenovo/internal/app/WindowCallback;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    return-object v0
.end method

.method public constructor <init>(Llenovo/widget/Toolbar;Z)V
    .locals 1
    .param p1, "toolbar"    # Llenovo/widget/Toolbar;
    .param p2, "style"    # Z

    .prologue
    .line 93
    const v0, 0x9090010

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;-><init>(Llenovo/widget/Toolbar;ZI)V

    .line 92
    return-void
.end method

.method public constructor <init>(Llenovo/widget/Toolbar;ZI)V
    .locals 24
    .param p1, "toolbar"    # Llenovo/widget/Toolbar;
    .param p2, "style"    # Z
    .param p3, "defaultNavigationContentDescription"    # I

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 89
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 98
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    .line 99
    invoke-virtual/range {p1 .. p1}, Llenovo/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 100
    invoke-virtual/range {p1 .. p1}, Llenovo/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 103
    if-eqz p2, :cond_d

    .line 104
    invoke-virtual/range {p1 .. p1}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v19

    .line 105
    sget-object v20, Lcom/lenovo/internal/R$styleable;->ActionBar:[I

    const/16 v21, 0x0

    const v22, 0x10102ce

    const/16 v23, 0x0

    .line 104
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 106
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v19, 0xf

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 107
    const/16 v19, 0x7

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 108
    .local v17, "title":Ljava/lang/CharSequence;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 109
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 113
    .local v15, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 114
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 117
    :cond_1
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 118
    .local v11, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_2

    .line 119
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 122
    :cond_2
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 123
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_3

    .line 124
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_3
    const/16 v19, 0xf

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 128
    .local v13, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_4

    .line 129
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_4
    const/16 v19, 0xa

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 135
    const/16 v19, 0xc

    const/16 v20, 0x0

    .line 134
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 136
    .local v8, "customNavId":I
    if-eqz v8, :cond_5

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 137
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v8, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    .line 139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 142
    :cond_5
    const/16 v19, 0x6

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v9

    .line 143
    .local v9, "height":I
    if-lez v9, :cond_6

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Llenovo/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 145
    .local v12, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v9, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Llenovo/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .end local v12    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Llenovo/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 154
    .local v14, "resources":Landroid/content/res/Resources;
    const v19, 0x908005f

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 155
    .local v7, "contentInsetStart":I
    const v19, 0x9080060

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 156
    .local v6, "contentInsetEnd":I
    if-gez v7, :cond_7

    if-ltz v6, :cond_8

    .line 157
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 158
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 157
    invoke-virtual/range {v19 .. v21}, Llenovo/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 161
    :cond_8
    const/16 v19, 0xd

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 162
    .local v18, "titleTextStyle":I
    if-eqz v18, :cond_9

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Llenovo/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 167
    :cond_9
    const/16 v19, 0xe

    const/16 v20, 0x0

    .line 166
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 168
    .local v16, "subtitleTextStyle":I
    if-eqz v16, :cond_a

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Llenovo/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 177
    :cond_a
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "contentInsetEnd":I
    .end local v7    # "contentInsetStart":I
    .end local v8    # "customNavId":I
    .end local v9    # "height":I
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "logo":Landroid/graphics/drawable/Drawable;
    .end local v13    # "navIcon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "resources":Landroid/content/res/Resources;
    .end local v15    # "subtitle":Ljava/lang/CharSequence;
    .end local v16    # "subtitleTextStyle":I
    .end local v17    # "title":Ljava/lang/CharSequence;
    .end local v18    # "titleTextStyle":I
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Llenovo/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 190
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    move-object/from16 v19, v0

    new-instance v20, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$1;-><init>(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual/range {v19 .. v20}, Llenovo/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void

    .line 101
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 179
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->detectDisplayOptions()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    goto :goto_1
.end method

.method private detectDisplayOptions()I
    .locals 2

    .prologue
    .line 231
    const/16 v0, 0xb

    .line 233
    .local v0, "opts":I
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v1}, Llenovo/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 234
    const/16 v0, 0xf

    .line 235
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v1}, Llenovo/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 237
    :cond_0
    return v0
.end method

.method private ensureSpinner()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 556
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 557
    new-instance v1, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10102d7

    invoke-direct {v1, v2, v5, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    .line 558
    new-instance v0, Llenovo/widget/Toolbar$LayoutParams;

    .line 559
    const v1, 0x800013

    .line 558
    invoke-direct {v0, v4, v4, v1}, Llenovo/widget/Toolbar$LayoutParams;-><init>(III)V

    .line 560
    .local v0, "lp":Llenovo/widget/Toolbar$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    .end local v0    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 291
    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0, p1}, Llenovo/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 289
    :cond_0
    return-void
.end method

.method private updateHomeAccessibility()V
    .locals 2

    .prologue
    .line 661
    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v0, v1}, Llenovo/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Llenovo/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNavigationIcon()V
    .locals 2

    .prologue
    .line 671
    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 672
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Llenovo/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 670
    :cond_0
    return-void

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateToolbarLogo()V
    .locals 2

    .prologue
    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 375
    iget v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 376
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 381
    .end local v0    # "logo":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v1, v0}, Llenovo/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 372
    return-void

    .line 376
    .restart local v0    # "logo":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 378
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 609
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 611
    new-instance v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$2;

    invoke-direct {v1, p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$2;-><init>(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)V

    .line 610
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    if-nez p1, :cond_0

    .line 626
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 627
    new-instance v1, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$3;

    invoke-direct {v1, p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper$3;-><init>(Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;)V

    .line 626
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public canSplit()Z
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->collapseActionView()V

    .line 261
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->dismissPopupMenus()V

    .line 425
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    return-object v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 2

    .prologue
    .line 316
    const-string/jumbo v0, "ToolbarWidgetWrapper"

    const-string/jumbo v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void
.end method

.method public initProgress()V
    .locals 2

    .prologue
    .line 311
    const-string/jumbo v0, "ToolbarWidgetWrapper"

    const-string/jumbo v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public isInExpanded()Z
    .locals 1

    .prologue
    .line 692
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isSplit()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public isSplitWhenNarrow()Z
    .locals 1

    .prologue
    .line 687
    const/4 v0, 0x0

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public onActivityOrientationChange(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 695
    return-void
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0, p1}, Llenovo/widget/Toolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 682
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0, p1}, Llenovo/widget/Toolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 677
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 1
    .param p1, "collapsible"    # Z

    .prologue
    .line 501
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0, p1}, Llenovo/widget/Toolbar;->setCollapsible(Z)V

    .line 500
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Llenovo/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 596
    :cond_0
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 597
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Llenovo/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 592
    :cond_1
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

    .prologue
    .line 213
    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-ne p1, v0, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    iput p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 217
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    .line 212
    :cond_1
    return-void
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "defaultNavigationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 225
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 226
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 223
    :cond_0
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 4
    .param p1, "newOpts"    # I

    .prologue
    const/4 v3, 0x0

    .line 436
    iget v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 437
    .local v1, "oldOpts":I
    xor-int v0, v1, p1

    .line 438
    .local v0, "changed":I
    iput p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 439
    if-eqz v0, :cond_3

    .line 440
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_0

    .line 441
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_4

    .line 442
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 443
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 449
    :cond_0
    :goto_0
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_1

    .line 450
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 453
    :cond_1
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_2

    .line 454
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_5

    .line 455
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Llenovo/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Llenovo/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 463
    :cond_2
    :goto_1
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 464
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_6

    .line 465
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Llenovo/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 435
    :cond_3
    :goto_2
    return-void

    .line 445
    :cond_4
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v2, v3}, Llenovo/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 458
    :cond_5
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v2, v3}, Llenovo/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v2, v3}, Llenovo/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 467
    :cond_6
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Llenovo/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 568
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 569
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 566
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 574
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 576
    const-string/jumbo v1, "Can\'t set dropdown selected position without an adapter"

    .line 575
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 573
    return-void
.end method

.method public setEmbeddedTabView(Lcom/lenovo/internal/widget/ScrollingTabContainerView;)V
    .locals 5
    .param p1, "tabView"    # Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    .prologue
    const/4 v4, -0x2

    .line 475
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    if-ne v1, v2, :cond_0

    .line 476
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1, v2}, Llenovo/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 478
    :cond_0
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 479
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 480
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Llenovo/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 481
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/widget/Toolbar$LayoutParams;

    .line 482
    .local v0, "lp":Llenovo/widget/Toolbar$LayoutParams;
    iput v4, v0, Llenovo/widget/Toolbar$LayoutParams;->width:I

    .line 483
    iput v4, v0, Llenovo/widget/Toolbar$LayoutParams;->height:I

    .line 484
    const v1, 0x800053

    iput v1, v0, Llenovo/widget/Toolbar$LayoutParams;->gravity:I

    .line 485
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 474
    .end local v0    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    :cond_1
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 505
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 352
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lenovo/internal/widget/ViewUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 351
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 358
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 356
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 363
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lenovo/internal/widget/ViewUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 362
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 369
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 367
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Llenovo/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v1}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Llenovo/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    .line 418
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    const v1, 0x90c0005

    invoke-virtual {v0, v1}, Llenovo/widget/ActionMenuPresenter;->setId(I)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Llenovo/widget/ActionMenuPresenter;->setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 421
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    check-cast p1, Lcom/lenovo/internal/view/menu/MenuBuilder;

    .end local p1    # "menu":Landroid/view/Menu;
    iget-object v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1, v1}, Llenovo/widget/Toolbar;->setMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Llenovo/widget/ActionMenuPresenter;)V

    .line 415
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    .line 410
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 657
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 656
    return-void

    .line 657
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 652
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 650
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 644
    if-eqz p1, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lenovo/internal/widget/ViewUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 644
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 643
    return-void

    .line 646
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 639
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 637
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 516
    iget v1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 517
    .local v1, "oldMode":I
    if-eq p1, v1, :cond_1

    .line 518
    packed-switch v1, :pswitch_data_0

    .line 531
    :cond_0
    :goto_0
    iput p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 533
    packed-switch p1, :pswitch_data_1

    .line 550
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid navigation mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 520
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    if-ne v2, v3, :cond_0

    .line 521
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Llenovo/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 525
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    if-ne v2, v3, :cond_0

    .line 526
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Llenovo/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 537
    :pswitch_2
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 538
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v5}, Llenovo/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 515
    :cond_1
    :goto_1
    :pswitch_3
    return-void

    .line 541
    :pswitch_4
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 542
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v3, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2, v3, v5}, Llenovo/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 543
    iget-object v2, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/widget/Toolbar$LayoutParams;

    .line 544
    .local v0, "lp":Llenovo/widget/Toolbar$LayoutParams;
    iput v4, v0, Llenovo/widget/Toolbar$LayoutParams;->width:I

    .line 545
    iput v4, v0, Llenovo/widget/Toolbar$LayoutParams;->height:I

    .line 546
    const v2, 0x800053

    iput v2, v0, Llenovo/widget/Toolbar$LayoutParams;->gravity:I

    goto :goto_1

    .line 518
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 533
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setSplitToolbar(Z)V
    .locals 2
    .param p1, "split"    # Z

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 331
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot split an android.widget.Toolbar"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    return-void
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "splitView"    # Landroid/view/ViewGroup;

    .prologue
    .line 325
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "splitWhenNarrow"    # Z

    .prologue
    .line 336
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 304
    iget v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0, p1}, Llenovo/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 302
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 286
    invoke-direct {p0, p1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method

.method public setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/lenovo/internal/app/WindowCallback;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    .line 266
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    if-nez v0, :cond_0

    .line 274
    invoke-direct {p0, p1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 271
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v0}, Llenovo/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
