.class public abstract Landroid/widget/AdapterViewAnimator;
.super Landroid/widget/AdapterView;
.source "AdapterViewAnimator.java"

# interfaces
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
.implements Landroid/widget/Advanceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterViewAnimator$ViewAndMetaData;,
        Landroid/widget/AdapterViewAnimator$CheckForTap;,
        Landroid/widget/AdapterViewAnimator$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
        "Landroid/widget/Advanceable;"
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_SHOW:Z = false

.field private static final DEFAULT_ANIMATION_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "AdapterViewAnimator"

.field static final TOUCH_MODE_DOWN_IN_CURRENT_VIEW:I = 0x1

.field static final TOUCH_MODE_HANDLED:I = 0x2

.field static final TOUCH_MODE_NONE:I


# instance fields
.field mActiveOffset:I

.field mAdapter:Landroid/widget/Adapter;

.field mAnimateFirstTime:Z

.field mCurrentWindowEnd:I

.field mCurrentWindowStart:I

.field mCurrentWindowStartUnbounded:I

.field private mDataHasChanged:Z

.field mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/Adapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field mDeferNotifyDataSetChanged:Z

.field mFirstTime:Z

.field mInAnimation:Landroid/animation/ObjectAnimator;

.field mLoopViews:Z

.field mMaxNumActiveViews:I

.field mOutAnimation:Landroid/animation/ObjectAnimator;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPreviousItemCount:I

.field mPreviousViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReferenceChildHeight:I

.field mReferenceChildWidth:I

.field mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

.field private mRestoreWhichChild:I

.field private mTouchMode:I

.field mViewsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/AdapterViewAnimator$ViewAndMetaData;",
            ">;"
        }
    .end annotation
.end field

.field mWhichChild:I


# direct methods
.method static synthetic -get0(Landroid/widget/AdapterViewAnimator;)I
    .locals 1

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousItemCount:I

    return v0
.end method

.method static synthetic -get1(Landroid/widget/AdapterViewAnimator;)I
    .locals 1

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/AdapterViewAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AdapterViewAnimator;->mDataHasChanged:Z

    return p1
.end method

.method static synthetic -set1(Landroid/widget/AdapterViewAnimator;I)I
    .locals 0

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mPreviousItemCount:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/AdapterViewAnimator;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->clearViewMaps()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 197
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 69
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    .line 74
    iput-boolean v5, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    .line 80
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    .line 86
    iput v5, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    .line 91
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    .line 101
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 106
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 112
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    .line 132
    iput-boolean v4, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 137
    iput-boolean v5, p0, Landroid/widget/AdapterViewAnimator;->mFirstTime:Z

    .line 143
    iput-boolean v5, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    .line 149
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    .line 150
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    .line 161
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 177
    iput-boolean v4, p0, Landroid/widget/AdapterViewAnimator;->mDataHasChanged:Z

    .line 200
    sget-object v3, Lcom/android/internal/R$styleable;->AdapterViewAnimator:[I

    .line 199
    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 201
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 203
    .local v2, "resource":I
    if-lez v2, :cond_0

    .line 204
    invoke-virtual {p0, p1, v2}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    .line 209
    :goto_0
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 210
    if-lez v2, :cond_1

    .line 211
    invoke-virtual {p0, p1, v2}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    .line 217
    :goto_1
    const/4 v3, 0x2

    .line 216
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 218
    .local v1, "flag":Z
    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->setAnimateFirstView(Z)V

    .line 221
    const/4 v3, 0x3

    .line 220
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    .line 223
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->initViewAnimator()V

    .line 196
    return-void

    .line 206
    .end local v1    # "flag":Z
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultInAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultOutAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    goto :goto_1
.end method

.method private addChild(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 680
    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v4, v1}, Landroid/widget/AdapterViewAnimator;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 682
    const-string/jumbo v1, "AdapterViewAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addChild: child = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 683
    const-string/jumbo v3, ",this = "

    .line 682
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-ne v1, v4, :cond_1

    .line 690
    :cond_0
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 691
    .local v0, "measureSpec":I
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 692
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    .line 693
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    .line 679
    .end local v0    # "measureSpec":I
    :cond_1
    return-void
.end method

.method private clearViewMaps()V
    .locals 5

    .prologue
    .line 1257
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "index$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1258
    .local v0, "index":Ljava/lang/Integer;
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v3, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 1259
    .local v3, "viewToRemove":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 1260
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 1261
    check-cast v2, Landroid/view/ViewGroup;

    .line 1262
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1266
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_0
    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 1268
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 1270
    .end local v0    # "index":Ljava/lang/Integer;
    .end local v3    # "viewToRemove":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1271
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1256
    return-void
.end method

.method private getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 426
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "vm$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 427
    .local v0, "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    iget-object v2, v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 428
    return-object v0

    .line 431
    .end local v0    # "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private initViewAnimator()V
    .locals 1

    .prologue
    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    .line 231
    return-void
.end method

.method private measureChildren()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 799
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v3

    .line 800
    .local v3, "count":I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    sub-int v2, v5, v6

    .line 801
    .local v2, "childWidth":I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    sub-int v1, v5, v6

    .line 803
    .local v1, "childHeight":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 804
    invoke-virtual {p0, v4}, Landroid/widget/AdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 805
    .local v0, "child":Landroid/view/View;
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 806
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 805
    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 803
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 798
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setDisplayedChild(IZ)V
    .locals 5
    .param p1, "whichChild"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 324
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v2, :cond_1

    .line 326
    const-string/jumbo v2, "AdapterViewAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDisplayedChild: whichChild = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",mWhichChild = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 327
    iget v4, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 327
    const-string/jumbo v4, ",window size = "

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 327
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v4

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 327
    const-string/jumbo v4, ",animate = "

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 328
    const-string/jumbo v4, ",mViewsMap = "

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 328
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 328
    const-string/jumbo v4, ",mPreviousViews = "

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 329
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 329
    const-string/jumbo v4, ",item count = "

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 329
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v4

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 333
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v2

    if-lt p1, v2, :cond_3

    .line 334
    iget-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v2, :cond_2

    :goto_0
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 339
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    .line 341
    .local v0, "hasFocus":Z
    :goto_2
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 342
    if-eqz v0, :cond_1

    .line 344
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->requestFocus(I)Z

    .line 323
    .end local v0    # "hasFocus":Z
    :cond_1
    return-void

    .line 334
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 335
    :cond_3
    if-gez p1, :cond_0

    .line 336
    iget-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :cond_4
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    goto :goto_1

    .line 339
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "hasFocus":Z
    goto :goto_2
.end method


# virtual methods
.method public advance()V
    .locals 0

    .prologue
    .line 1236
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    .line 1235
    return-void
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativeIndex"    # I

    .prologue
    .line 356
    return-void
.end method

.method cancelHandleClick()V
    .locals 2

    .prologue
    .line 706
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 707
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    .line 710
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 705
    return-void
.end method

.method checkForAndHandleDataChanged()V
    .locals 2

    .prologue
    .line 855
    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDataChanged:Z

    .line 856
    .local v0, "dataChanged":Z
    if-eqz v0, :cond_0

    .line 857
    new-instance v1, Landroid/widget/AdapterViewAnimator$2;

    invoke-direct {v1, p0}, Landroid/widget/AdapterViewAnimator$2;-><init>(Landroid/widget/AdapterViewAnimator;)V

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->post(Ljava/lang/Runnable;)Z

    .line 905
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->setDataChanged(Z)Z

    .line 854
    return-void
.end method

.method configureViewAnimator(II)V
    .locals 1
    .param p1, "numVisibleViews"    # I
    .param p2, "activeOffset"    # I

    .prologue
    .line 269
    add-int/lit8 v0, p1, -0x1

    if-le p2, v0, :cond_0

    .line 272
    :cond_0
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    .line 273
    iput p2, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    .line 274
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 275
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 276
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->removeAllViewsInLayout()V

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 278
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 268
    return-void
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 435
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 436
    .local v0, "currentLp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_0

    .line 437
    move-object v1, v0

    .line 438
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    return-object v1

    .line 440
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v2
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1186
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1185
    return-void
.end method

.method public fyiWillBeAdvancedByHostKThx()V
    .locals 0

    .prologue
    .line 1245
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1250
    const-class v0, Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 1093
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1003
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getDefaultInAnimation()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 302
    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 303
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 304
    return-object v0

    .line 302
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getDefaultOutAnimation()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 308
    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 309
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 310
    return-object v0

    .line 308
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getDisplayedChild()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    return v0
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 490
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getInAnimation()Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method getNumActiveViews()I
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 408
    :cond_0
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    return v0
.end method

.method public getOutAnimation()Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1178
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewAtRelativeIndex(I)Landroid/view/View;
    .locals 4
    .param p1, "relativeIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 395
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_0

    .line 396
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v0

    .line 397
    .local v0, "i":I
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    return-object v1

    .line 401
    .end local v0    # "i":I
    :cond_0
    return-object v3
.end method

.method getWindowSize()I
    .locals 2

    .prologue
    .line 413
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_1

    .line 414
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    .line 415
    .local v0, "adapterCount":I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v1, :cond_0

    .line 416
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    mul-int/2addr v1, v0

    return v1

    .line 418
    :cond_0
    return v0

    .line 421
    .end local v0    # "adapterCount":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 702
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 701
    return-void
.end method

.method modulo(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v0, 0x0

    .line 381
    if-lez p2, :cond_0

    .line 382
    rem-int v0, p1, p2

    add-int/2addr v0, p2

    rem-int/2addr v0, p2

    return v0

    .line 384
    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 910
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkForAndHandleDataChanged()V

    .line 912
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v2

    .line 913
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 914
    invoke-virtual {p0, v4}, Landroid/widget/AdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 916
    .local v0, "child":Landroid/view/View;
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int v3, v5, v6

    .line 917
    .local v3, "childRight":I
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int v1, v5, v6

    .line 919
    .local v1, "childBottom":I
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {v0, v5, v6, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 913
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 909
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v3    # "childRight":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x1000000

    const/4 v8, -0x1

    const/high16 v9, -0x80000000

    .line 812
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 813
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 814
    .local v3, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 815
    .local v5, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 817
    .local v2, "heightSpecMode":I
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    if-eq v7, v8, :cond_2

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-eq v7, v8, :cond_2

    const/4 v0, 0x1

    .line 822
    .local v0, "haveChildRefSize":Z
    :goto_0
    if-nez v2, :cond_4

    .line 823
    if-eqz v0, :cond_3

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v7, v8

    .line 824
    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    .line 823
    add-int v3, v7, v8

    .line 836
    :cond_0
    :goto_1
    if-nez v5, :cond_7

    .line 837
    if-eqz v0, :cond_6

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr v7, v8

    .line 838
    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    .line 837
    add-int v6, v7, v8

    .line 850
    :cond_1
    :goto_2
    invoke-virtual {p0, v6, v3}, Landroid/widget/AdapterViewAnimator;->setMeasuredDimension(II)V

    .line 851
    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->measureChildren()V

    .line 811
    return-void

    .line 817
    .end local v0    # "haveChildRefSize":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "haveChildRefSize":Z
    goto :goto_0

    .line 824
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 825
    :cond_4
    if-ne v2, v9, :cond_0

    .line 826
    if-eqz v0, :cond_0

    .line 827
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    add-int v1, v7, v8

    .line 828
    .local v1, "height":I
    if-le v1, v3, :cond_5

    .line 829
    or-int/2addr v3, v10

    goto :goto_1

    .line 831
    :cond_5
    move v3, v1

    goto :goto_1

    .line 838
    .end local v1    # "height":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 839
    :cond_7
    if-ne v2, v9, :cond_1

    .line 840
    if-eqz v0, :cond_1

    .line 841
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    add-int v4, v7, v8

    .line 842
    .local v4, "width":I
    if-le v4, v6, :cond_8

    .line 843
    or-int/2addr v6, v10

    goto :goto_2

    .line 845
    :cond_8
    move v6, v4

    goto :goto_2
.end method

.method public onRemoteAdapterConnected()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1194
    const-string/jumbo v0, "AdapterViewAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRemoteAdapterConnected: mRemoteViewsAdapter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1195
    const-string/jumbo v2, ",mAdapter = "

    .line 1194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1195
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    .line 1194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1195
    const-string/jumbo v2, ",mDeferNotifyDataSetChanged = "

    .line 1194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1196
    iget-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1196
    const-string/jumbo v2, ",this = "

    .line 1194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eq v0, v1, :cond_2

    .line 1200
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 1202
    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 1204
    iput-boolean v3, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1208
    :cond_0
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    if-le v0, v4, :cond_1

    .line 1209
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    invoke-direct {p0, v0, v3}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 1210
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    .line 1212
    :cond_1
    return v3

    .line 1213
    :cond_2
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_3

    .line 1214
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 1215
    const/4 v0, 0x1

    return v0

    .line 1217
    :cond_3
    return v3
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 1223
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 976
    check-cast v0, Landroid/widget/AdapterViewAnimator$SavedState;

    .line 977
    .local v0, "ss":Landroid/widget/AdapterViewAnimator$SavedState;
    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 982
    iget v1, v0, Landroid/widget/AdapterViewAnimator$SavedState;->whichChild:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 988
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v1, :cond_0

    .line 989
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    .line 975
    :goto_0
    return-void

    .line 991
    :cond_0
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 967
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 968
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    .line 969
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 971
    :cond_0
    new-instance v1, Landroid/widget/AdapterViewAnimator$SavedState;

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-direct {v1, v0, v2}, Landroid/widget/AdapterViewAnimator$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 724
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 725
    .local v0, "action":I
    const/4 v1, 0x0

    .line 726
    .local v1, "handled":Z
    packed-switch v0, :pswitch_data_0

    .line 795
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 728
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 730
    .local v3, "v":Landroid/view/View;
    const-string/jumbo v5, "AdapterViewAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onTouchEvent touch down: mCurrentWindowStart = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 731
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 730
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 731
    const-string/jumbo v7, ",mCurrentWindowEnd = "

    .line 730
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 731
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 730
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 732
    const-string/jumbo v7, ",v = "

    .line 730
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 732
    const-string/jumbo v7, ",mTouchMode = "

    .line 730
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 732
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 730
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 732
    const-string/jumbo v7, ",this = "

    .line 730
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    if-eqz v3, :cond_0

    .line 736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6, v3, v8}, Landroid/widget/AdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 737
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v5, :cond_1

    .line 738
    new-instance v5, Landroid/widget/AdapterViewAnimator$CheckForTap;

    invoke-direct {v5, p0}, Landroid/widget/AdapterViewAnimator$CheckForTap;-><init>(Landroid/widget/AdapterViewAnimator;)V

    iput-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 740
    :cond_1
    iput v10, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 741
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 750
    .end local v3    # "v":Landroid/view/View;
    :pswitch_2
    const-string/jumbo v5, "AdapterViewAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onTouchEvent touch up: mCurrentWindowStart = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 751
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 750
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 751
    const-string/jumbo v7, ",mCurrentWindowEnd = "

    .line 750
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 751
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 750
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 752
    const-string/jumbo v7, ",mTouchMode = "

    .line 750
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 752
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 750
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 752
    const-string/jumbo v7, ",this = "

    .line 750
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    if-ne v5, v10, :cond_3

    .line 756
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 757
    .restart local v3    # "v":Landroid/view/View;
    invoke-direct {p0, v3}, Landroid/widget/AdapterViewAnimator;->getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-result-object v4

    .line 758
    .local v4, "viewData":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    if-eqz v3, :cond_3

    .line 759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6, v3, v8}, Landroid/widget/AdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 760
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 761
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_2

    .line 762
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 764
    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->showTapFeedback(Landroid/view/View;)V

    .line 765
    new-instance v5, Landroid/widget/AdapterViewAnimator$1;

    invoke-direct {v5, p0, v3, v4}, Landroid/widget/AdapterViewAnimator$1;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;Landroid/widget/AdapterViewAnimator$ViewAndMetaData;)V

    .line 779
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    int-to-long v6, v6

    .line 765
    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 780
    const/4 v1, 0x1

    .line 784
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "viewData":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_3
    iput v9, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    goto/16 :goto_0

    .line 788
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 789
    .restart local v3    # "v":Landroid/view/View;
    if-eqz v3, :cond_4

    .line 790
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    .line 792
    :cond_4
    iput v9, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    goto/16 :goto_0

    .line 726
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method refreshChildren()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 444
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v5, :cond_0

    return-void

    .line 452
    :cond_0
    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .local v2, "i":I
    :goto_0
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    if-gt v2, v5, :cond_3

    .line 453
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v3

    .line 455
    .local v3, "index":I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    .line 457
    .local v0, "adapterCount":I
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-virtual {p0, v2, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v6

    invoke-interface {v5, v6, v7, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 459
    .local v4, "updatedChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 460
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 470
    :cond_1
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 471
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    .line 473
    .local v1, "fl":Landroid/widget/FrameLayout;
    if-eqz v4, :cond_2

    .line 475
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 476
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 452
    .end local v1    # "fl":Landroid/widget/FrameLayout;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 443
    .end local v0    # "adapterCount":I
    .end local v3    # "index":I
    .end local v4    # "updatedChild":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    const/4 v3, 0x0

    .line 1103
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1107
    :cond_0
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    .line 1108
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkFocus()V

    .line 1110
    const-string/jumbo v0, "AdapterViewAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAdapter: adapter count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mWhichChild = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1111
    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 1110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1111
    const-string/jumbo v2, ",this = "

    .line 1110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 1115
    new-instance v0, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    .line 1116
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1117
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mItemCount:I

    .line 1119
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setFocusable(Z)V

    .line 1120
    iput v3, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 1121
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0, v3}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 1102
    return-void
.end method

.method public setAnimateFirstView(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 1088
    iput-boolean p1, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    .line 1087
    return-void
.end method

.method public setDisplayedChild(I)V
    .locals 1
    .param p1, "whichChild"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 320
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 319
    return-void
.end method

.method public setInAnimation(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .param p1, "inAnimation"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 1027
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    .line 1026
    return-void
.end method

.method public setInAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 1064
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    .line 1063
    return-void
.end method

.method public setOutAnimation(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .param p1, "outAnimation"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 1051
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    .line 1050
    return-void
.end method

.method public setOutAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 1077
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    .line 1076
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1136
    const-string/jumbo v2, "AdapterViewAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRemoteViewsAdapter: intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",mRemoteViewsAdapter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1137
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 1136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1137
    const-string/jumbo v4, ",mWhichChild = "

    .line 1136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1137
    iget v4, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 1136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1137
    const-string/jumbo v4, ",this = "

    .line 1136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_0

    .line 1141
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1142
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    .line 1143
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1142
    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1144
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1145
    return-void

    .line 1148
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1150
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 1151
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1152
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 1132
    :cond_1
    return-void
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1166
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 1163
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1173
    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 1172
    return-void
.end method

.method public showNext()V
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 369
    return-void
.end method

.method showOnly(IZ)V
    .locals 35
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 504
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v5, :cond_0

    return-void

    .line 505
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v4

    .line 506
    .local v4, "adapterCount":I
    if-nez v4, :cond_1

    return-void

    .line 509
    :cond_1
    const-string/jumbo v5, "AdapterViewAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "showOnly start: childIndex = "

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v33, ",mCurrentWindowStart = "

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 510
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    move/from16 v33, v0

    .line 509
    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 510
    const-string/jumbo v33, ",mCurrentWindowEnd = "

    .line 509
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 510
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    move/from16 v33, v0

    .line 509
    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 511
    const-string/jumbo v33, ",mWhichChild = "

    .line 509
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 511
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    move/from16 v33, v0

    .line 509
    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 511
    const-string/jumbo v33, ",animate = "

    .line 509
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 511
    const-string/jumbo v33, ",window size = "

    .line 509
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 512
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v33

    .line 509
    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 512
    const-string/jumbo v33, ",mActiveOffset = "

    .line 509
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 512
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    move/from16 v33, v0

    .line 509
    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 512
    const-string/jumbo v33, ",childCount = "

    .line 509
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 513
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v33

    .line 509
    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 513
    const-string/jumbo v33, ",mViewsMap = "

    .line 509
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v33, v0

    .line 509
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 513
    const-string/jumbo v33, ",mPreviousViews = "

    .line 509
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    .line 509
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 514
    const-string/jumbo v33, ",this = "

    .line 509
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v14, v5, :cond_3

    .line 518
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v31, v0

    .line 523
    .local v31, "viewToRemove":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->clearAnimation()V

    .line 525
    move-object/from16 v0, v31

    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    move-object/from16 v29, v31

    .line 526
    check-cast v29, Landroid/view/ViewGroup;

    .line 527
    .local v29, "vg":Landroid/view/ViewGroup;
    invoke-virtual/range {v29 .. v29}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 531
    .end local v29    # "vg":Landroid/view/ViewGroup;
    :cond_2
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v5}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 533
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/AdapterViewAnimator;->removeViewInLayout(Landroid/view/View;)V

    .line 517
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 535
    .end local v31    # "viewToRemove":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 536
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    sub-int v23, p1, v5

    .line 537
    .local v23, "newWindowStartUnbounded":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v5

    add-int v5, v5, v23

    add-int/lit8 v21, v5, -0x1

    .line 538
    .local v21, "newWindowEndUnbounded":I
    const/4 v5, 0x0

    move/from16 v0, v23

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 539
    .local v22, "newWindowStart":I
    add-int/lit8 v5, v4, -0x1

    move/from16 v0, v21

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 552
    .local v20, "newWindowEnd":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v5, :cond_4

    .line 553
    move/from16 v22, v23

    .line 554
    move/from16 v20, v21

    .line 556
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v27

    .line 557
    .local v27, "rangeStart":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v26

    .line 559
    .local v26, "rangeEnd":I
    const/16 v32, 0x0

    .line 560
    .local v32, "wrap":Z
    move/from16 v0, v27

    move/from16 v1, v26

    if-le v0, v1, :cond_5

    .line 561
    const/16 v32, 0x1

    .line 568
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "index$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 569
    .local v17, "index":Ljava/lang/Integer;
    const/16 v28, 0x0

    .line 570
    .local v28, "remove":Z
    if-nez v32, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v27

    if-lt v5, v0, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v26

    if-le v5, v0, :cond_9

    .line 571
    :cond_7
    const/16 v28, 0x1

    .line 582
    :cond_8
    :goto_2
    if-eqz v28, :cond_6

    .line 583
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v25, v0

    .line 584
    .local v25, "previousView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    move/from16 v24, v0

    .line 586
    .local v24, "oldRelativeIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, p2

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    goto :goto_1

    .line 572
    .end local v24    # "oldRelativeIndex":I
    .end local v25    # "previousView":Landroid/view/View;
    :cond_9
    if-eqz v32, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v26

    if-le v5, v0, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v27

    if-ge v5, v0, :cond_8

    .line 573
    const/16 v28, 0x1

    goto :goto_2

    .line 603
    .end local v17    # "index":Ljava/lang/Integer;
    .end local v28    # "remove":Z
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/AdapterViewAnimator;->mDataHasChanged:Z

    if-nez v5, :cond_b

    .line 604
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    move/from16 v0, v22

    if-ne v0, v5, :cond_b

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    move/from16 v0, v20

    if-eq v0, v5, :cond_d

    .line 606
    :cond_b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/AdapterViewAnimator;->mDataHasChanged:Z

    .line 608
    move/from16 v14, v22

    :goto_3
    move/from16 v0, v20

    if-gt v14, v0, :cond_13

    .line 610
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v16

    .line 612
    .local v16, "index":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 613
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    move/from16 v24, v0

    .line 617
    .restart local v24    # "oldRelativeIndex":I
    :goto_4
    sub-int v8, v14, v23

    .line 622
    .local v8, "newRelativeIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_c
    const/4 v15, 0x0

    .line 630
    .local v15, "inOldRange":Z
    :goto_5
    if-eqz v15, :cond_11

    .line 631
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v30, v0

    .line 632
    .local v30, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iput v8, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    .line 633
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v8}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 634
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v30

    move/from16 v3, p2

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    .line 657
    .end local v30    # "view":Landroid/view/View;
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v5, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    .line 608
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 605
    .end local v8    # "newRelativeIndex":I
    .end local v15    # "inOldRange":Z
    .end local v16    # "index":I
    .end local v24    # "oldRelativeIndex":I
    :cond_d
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    move/from16 v0, v23

    if-ne v0, v5, :cond_b

    .line 668
    :cond_e
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->requestLayout()V

    .line 669
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->invalidate()V

    .line 671
    const-string/jumbo v5, "AdapterViewAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "showOnly end: childIndex = "

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v33, ",mCurrentWindowStart = "

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 672
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    move/from16 v33, v0

    .line 671
    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 672
    const-string/jumbo v33, ",mCurrentWindowEnd = "

    .line 671
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 672
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    move/from16 v33, v0

    .line 671
    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 673
    const-string/jumbo v33, ",window size = "

    .line 671
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v33

    .line 671
    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 673
    const-string/jumbo v33, ",mActiveOffset = "

    .line 671
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 673
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    move/from16 v33, v0

    .line 671
    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 674
    const-string/jumbo v33, ",childCount = "

    .line 671
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 674
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v33

    .line 671
    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 674
    const-string/jumbo v33, ",mPreviousViews = "

    .line 671
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    .line 671
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 675
    const-string/jumbo v33, ",mViewsMap = "

    .line 671
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v33, v0

    .line 671
    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void

    .line 615
    .restart local v16    # "index":I
    :cond_f
    const/16 v24, -0x1

    .restart local v24    # "oldRelativeIndex":I
    goto/16 :goto_4

    .line 622
    .restart local v8    # "newRelativeIndex":I
    :cond_10
    const/4 v15, 0x1

    .restart local v15    # "inOldRange":Z
    goto/16 :goto_5

    .line 639
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v9

    .line 640
    .local v9, "adapterPosition":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-interface {v5, v9, v6, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 641
    .local v19, "newView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v5, v9}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v10

    .line 645
    .local v10, "itemId":J
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getFrameForChild()Landroid/widget/FrameLayout;

    move-result-object v7

    .line 648
    .local v7, "fl":Landroid/widget/FrameLayout;
    if-eqz v19, :cond_12

    .line 649
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 651
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    new-instance v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;IIJ)V

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/AdapterViewAnimator;->addChild(Landroid/view/View;)V

    .line 654
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 655
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v5, v8, v7, v1}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    goto/16 :goto_6

    .line 659
    .end local v7    # "fl":Landroid/widget/FrameLayout;
    .end local v8    # "newRelativeIndex":I
    .end local v9    # "adapterPosition":I
    .end local v10    # "itemId":J
    .end local v15    # "inOldRange":Z
    .end local v16    # "index":I
    .end local v19    # "newView":Landroid/view/View;
    .end local v24    # "oldRelativeIndex":I
    :cond_13
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 660
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 661
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    .line 662
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v5, :cond_e

    .line 663
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v13

    .line 664
    .local v13, "adapterStart":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v12

    .line 665
    .local v12, "adapterEnd":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v5, v13, v12}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    goto/16 :goto_7
.end method

.method public showPrevious()V
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 376
    return-void
.end method

.method showTapFeedback(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 698
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 697
    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "animate"    # Z

    .prologue
    const/4 v0, -0x1

    .line 292
    if-ne p1, v0, :cond_1

    .line 293
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 294
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    if-ne p2, v0, :cond_0

    .line 296
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
