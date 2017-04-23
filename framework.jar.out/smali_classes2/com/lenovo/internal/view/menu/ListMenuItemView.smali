.class public Lcom/lenovo/internal/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuView$ItemView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItemView"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

.field private mMenuType:I

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    .line 69
    sget-object v1, Lcom/lenovo/internal/R$styleable;->MenuView:[I

    .line 68
    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 73
    const/4 v1, 0x1

    .line 74
    const/4 v2, -0x1

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 81
    iput-boolean v3, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 84
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertCheckBox()V
    .locals 3

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 272
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x9040020

    .line 273
    const/4 v2, 0x0

    .line 272
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 271
    iput-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 274
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 269
    return-void
.end method

.method private insertIconView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-direct {p0}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 256
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x9040021

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 258
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    .line 254
    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 264
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x9040023

    .line 265
    const/4 v2, 0x0

    .line 264
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 263
    iput-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 266
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 261
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/lenovo/internal/view/menu/MenuItemImpl;I)V
    .locals 2
    .param p1, "itemData"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 110
    iput p2, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mMenuType:I

    .line 112
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->setVisibility(I)V

    .line 114
    invoke-virtual {p1, p0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/lenovo/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 116
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 117
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 118
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->setEnabled(Z)V

    .line 108
    return-void

    .line 112
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 97
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    const v0, 0x90c000f

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 100
    iget v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 102
    iget v2, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 105
    :cond_0
    const v0, 0x90c0010

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 94
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 243
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 246
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 247
    .local v0, "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 248
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 251
    .end local v0    # "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 242
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 5
    .param p1, "checkable"    # Z

    .prologue
    const/16 v4, 0x8

    .line 140
    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v3, :cond_0

    .line 141
    return-void

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 150
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v3, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 154
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 163
    .local v2, "otherCompoundButton":Landroid/widget/CompoundButton;
    :goto_0
    if-eqz p1, :cond_7

    .line 164
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 166
    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 167
    .local v1, "newVisibility":I
    :goto_1
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_2

    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 172
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_3

    .line 173
    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 139
    .end local v1    # "newVisibility":I
    :cond_3
    :goto_2
    return-void

    .line 156
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    .end local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    :cond_4
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v3, :cond_5

    .line 157
    invoke-direct {p0}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 160
    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .restart local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    goto :goto_0

    .line 166
    :cond_6
    const/16 v1, 0x8

    .restart local v1    # "newVisibility":I
    goto :goto_1

    .line 176
    .end local v1    # "newVisibility":I
    :cond_7
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_8

    .line 177
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 179
    :cond_8
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v3, :cond_3

    .line 180
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_2
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 188
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 200
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 185
    return-void

    .line 194
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_2

    .line 195
    invoke-direct {p0}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    goto :goto_0
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 121
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 217
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    .line 218
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_6

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_7

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_2

    .line 227
    invoke-direct {p0}, Lcom/lenovo/internal/view/menu/ListMenuItemView;->insertIconView()V

    .line 230
    :cond_2
    if-nez p1, :cond_3

    iget-boolean v2, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_9

    .line 231
    :cond_3
    iget-object v2, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 234
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    :cond_4
    :goto_2
    return-void

    .line 217
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    const/4 v0, 0x1

    .local v0, "showIcon":Z
    goto :goto_0

    .line 219
    .end local v0    # "showIcon":Z
    :cond_6
    return-void

    .line 223
    :cond_7
    return-void

    :cond_8
    move-object p1, v1

    .line 231
    goto :goto_1

    .line 237
    :cond_9
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public setShortcut(ZC)V
    .locals 3
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 204
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "newVisibility":I
    :goto_0
    if-nez v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mItemData:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 212
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :cond_1
    return-void

    .line 205
    .end local v0    # "newVisibility":I
    :cond_2
    const/16 v0, 0x8

    .restart local v0    # "newVisibility":I
    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 126
    if-eqz p1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/lenovo/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    return v0
.end method
