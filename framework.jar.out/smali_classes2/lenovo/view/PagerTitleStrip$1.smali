.class Llenovo/view/PagerTitleStrip$1;
.super Ljava/lang/Object;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/view/PagerTitleStrip;->createTabView(ZILjava/lang/CharSequence;)Llenovo/view/PagerTitleStrip$TabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/view/PagerTitleStrip;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Llenovo/view/PagerTitleStrip;I)V
    .locals 0
    .param p1, "this$0"    # Llenovo/view/PagerTitleStrip;
    .param p2, "val$index"    # I

    .prologue
    .line 456
    iput-object p1, p0, Llenovo/view/PagerTitleStrip$1;->this$0:Llenovo/view/PagerTitleStrip;

    iput p2, p0, Llenovo/view/PagerTitleStrip$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 459
    iget-object v3, p0, Llenovo/view/PagerTitleStrip$1;->this$0:Llenovo/view/PagerTitleStrip;

    iget-object v3, v3, Llenovo/view/PagerTitleStrip;->mPager:Llenovo/view/ViewPager;

    iget v4, p0, Llenovo/view/PagerTitleStrip$1;->val$index:I

    invoke-virtual {v3, v4}, Llenovo/view/ViewPager;->setCurrentItem(I)V

    .line 460
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Llenovo/view/PagerTitleStrip$1;->this$0:Llenovo/view/PagerTitleStrip;

    invoke-static {v3}, Llenovo/view/PagerTitleStrip;->-get1(Llenovo/view/PagerTitleStrip;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 461
    iget-object v3, p0, Llenovo/view/PagerTitleStrip$1;->this$0:Llenovo/view/PagerTitleStrip;

    invoke-static {v3}, Llenovo/view/PagerTitleStrip;->-get1(Llenovo/view/PagerTitleStrip;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 462
    .local v0, "child":Landroid/view/View;
    if-ne v0, p1, :cond_1

    const/4 v2, 0x1

    .line 463
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 464
    if-eqz v2, :cond_0

    .line 465
    iget-object v3, p0, Llenovo/view/PagerTitleStrip$1;->this$0:Llenovo/view/PagerTitleStrip;

    invoke-virtual {v3, v1}, Llenovo/view/PagerTitleStrip;->animateToTab(I)V

    .line 460
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    .end local v2    # "isSelected":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isSelected":Z
    goto :goto_1

    .line 458
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "isSelected":Z
    :cond_2
    return-void
.end method
