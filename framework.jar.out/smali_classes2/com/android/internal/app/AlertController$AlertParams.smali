.class public Lcom/android/internal/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 935
    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    .line 958
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 962
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 970
    iput-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 986
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 987
    iput-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 988
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 985
    return-void
.end method

.method private createListView(Lcom/android/internal/app/AlertController;)V
    .locals 11
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    .prologue
    const v4, 0x1020014

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1053
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-get10(Lcom/android/internal/app/AlertController;)I

    move-result v3

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/AlertController$RecycleListView;

    .line 1056
    .local v6, "listView":Lcom/android/internal/app/AlertController$RecycleListView;
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1057
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x9080045

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1058
    .local v8, "paddingVertical":I
    invoke-virtual {v6, v5, v5, v5, v8}, Lcom/android/internal/app/AlertController$RecycleListView;->setPadding(IIII)V

    .line 1062
    .end local v8    # "paddingVertical":I
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_6

    .line 1063
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_5

    .line 1064
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams$1;

    .line 1065
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-get11(Lcom/android/internal/app/AlertController;)I

    move-result v3

    iget-object v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    .line 1064
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/AlertController$AlertParams$1;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/android/internal/app/AlertController$RecycleListView;)V

    .line 1123
    .local v0, "adapter":Landroid/widget/ListAdapter;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_1

    .line 1124
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1130
    :cond_1
    invoke-static {p1, v0}, Lcom/android/internal/app/AlertController;->-set0(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1131
    iget v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    invoke-static {p1, v1}, Lcom/android/internal/app/AlertController;->-set1(Lcom/android/internal/app/AlertController;I)I

    .line 1133
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_a

    .line 1134
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/AlertController$AlertParams$3;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController;)V

    invoke-virtual {v6, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1157
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_3

    .line 1158
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1161
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_b

    .line 1162
    invoke-virtual {v6, v10}, Lcom/android/internal/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1166
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v1, v6, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 1167
    invoke-static {p1, v6}, Lcom/android/internal/app/AlertController;->-set2(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 1051
    return-void

    .line 1079
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams$2;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/AlertController$AlertParams$2;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1107
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_7

    .line 1108
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-get12(Lcom/android/internal/app/AlertController;)I

    move-result v2

    .line 1113
    .local v2, "layout":I
    :goto_3
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_8

    .line 1114
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 1115
    new-array v7, v10, [Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v9, v7, v5

    new-array v9, v10, [I

    aput v4, v9, v5

    move-object v4, v7

    move-object v5, v9

    .line 1114
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1110
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "layout":I
    :cond_7
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-get9(Lcom/android/internal/app/AlertController;)I

    move-result v2

    .restart local v2    # "layout":I
    goto :goto_3

    .line 1116
    :cond_8
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_9

    .line 1117
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1119
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_9
    new-instance v0, Lcom/android/internal/app/AlertController$CheckedItemAdapter;

    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/internal/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1143
    .end local v2    # "layout":I
    :cond_a
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_2

    .line 1144
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Lcom/android/internal/app/AlertController$AlertParams$4;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V

    invoke-virtual {v6, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 1163
    :cond_b
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_4

    .line 1164
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/android/internal/app/AlertController;)V
    .locals 6
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    .prologue
    const/4 v3, 0x0

    .line 992
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 993
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 1008
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1011
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 1012
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 1013
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1012
    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1015
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 1016
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 1017
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1016
    const/4 v2, -0x2

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1019
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 1020
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 1021
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1020
    const/4 v2, -0x3

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1023
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_5

    .line 1024
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setInverseBackgroundForced(Z)V

    .line 1028
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_d

    .line 1029
    :cond_6
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V

    .line 1031
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 1032
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_e

    .line 1033
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 1034
    iget v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    .line 1033
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;IIII)V

    .line 991
    :cond_8
    :goto_2
    return-void

    .line 995
    :cond_9
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    .line 996
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 998
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 999
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1001
    :cond_b
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_c

    .line 1002
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 1004
    :cond_c
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_0

    .line 1005
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    goto :goto_0

    .line 1028
    :cond_d
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    goto :goto_1

    .line 1036
    :cond_e
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_2

    .line 1038
    :cond_f
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_8

    .line 1039
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewLayoutResId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setView(I)V

    goto :goto_2
.end method
