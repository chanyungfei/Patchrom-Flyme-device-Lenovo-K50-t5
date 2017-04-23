.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooserRowAdapter"
.end annotation


# instance fields
.field private mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

.field private final mColumnCount:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "wrappedAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .prologue
    .line 902
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 900
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    .line 903
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 904
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 906
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 902
    return-void
.end method


# virtual methods
.method bindViewHolder(I[Landroid/view/View;)V
    .locals 10
    .param p1, "rowPosition"    # I
    .param p2, "holder"    # [Landroid/view/View;

    .prologue
    const/4 v9, 0x4

    .line 970
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    move-result v4

    .line 971
    .local v4, "start":I
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v7, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v5

    .line 973
    .local v5, "startType":I
    add-int/lit8 v7, v4, 0x4

    add-int/lit8 v0, v7, -0x1

    .line 974
    .local v0, "end":I
    :goto_0
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v7, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v7

    if-eq v7, v5, :cond_0

    if-lt v0, v4, :cond_0

    .line 975
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 978
    :cond_0
    aget-object v3, p2, v9

    check-cast v3, Landroid/view/ViewGroup;

    .line 980
    .local v3, "row":Landroid/view/ViewGroup;
    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    .line 981
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v8, 0x1060071

    invoke-virtual {v7, v8}, Lcom/android/internal/app/ChooserActivity;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 986
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v9, :cond_3

    .line 987
    aget-object v6, p2, v1

    .line 988
    .local v6, "v":Landroid/view/View;
    add-int v7, v4, v1

    if-gt v7, v0, :cond_2

    .line 989
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 990
    add-int v2, v4, v1

    .line 991
    .local v2, "itemIndex":I
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v7, v2, v6}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->bindView(ILandroid/view/View;)V

    .line 992
    new-instance v7, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;

    invoke-direct {v7, p0, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 998
    new-instance v7, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;

    invoke-direct {v7, p0, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 986
    .end local v2    # "itemIndex":I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 983
    .end local v1    # "i":I
    .end local v6    # "v":Landroid/view/View;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1007
    .restart local v1    # "i":I
    .restart local v6    # "v":Landroid/view/View;
    :cond_2
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 969
    .end local v6    # "v":Landroid/view/View;
    :cond_3
    return-void
.end method

.method createViewHolder(Landroid/view/ViewGroup;)[Landroid/view/View;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x4

    .line 956
    const/4 v3, 0x5

    new-array v0, v3, [Landroid/view/View;

    .line 958
    .local v0, "holder":[Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x1090043

    .line 959
    const/4 v5, 0x0

    .line 958
    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 960
    .local v2, "row":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 961
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v0, v1

    .line 962
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 960
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 964
    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 965
    aput-object v2, v0, v6

    .line 966
    return-object v0
.end method

.method public getCount()I
    .locals 5

    .prologue
    const/high16 v4, 0x40800000    # 4.0f

    .line 924
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 925
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 924
    add-double/2addr v0, v2

    .line 926
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 923
    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method getFirstRowPosition(I)I
    .locals 7
    .param p1, "row"    # I

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    .line 1013
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .line 1014
    .local v0, "callerCount":I
    int-to-float v4, v0

    div-float/2addr v4, v6

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 1016
    .local v1, "callerRows":I
    if-ge p1, v1, :cond_0

    .line 1017
    mul-int/lit8 v4, p1, 0x4

    return v4

    .line 1020
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    .line 1021
    .local v2, "serviceCount":I
    int-to-float v4, v2

    div-float/2addr v4, v6

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 1023
    .local v3, "serviceRows":I
    add-int v4, v1, v3

    if-ge p1, v4, :cond_1

    .line 1024
    sub-int v4, p1, v1

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    return v4

    .line 1027
    :cond_1
    add-int v4, v0, v2

    .line 1028
    sub-int v5, p1, v1

    sub-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x4

    .line 1027
    add-int/2addr v4, v5

    return v4
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 933
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 938
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 944
    if-nez p2, :cond_0

    .line 945
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createViewHolder(Landroid/view/ViewGroup;)[Landroid/view/View;

    move-result-object v0

    .line 949
    .local v0, "holder":[Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->bindViewHolder(I[Landroid/view/View;)V

    .line 952
    const/4 v1, 0x4

    aget-object v1, v0, v1

    return-object v1

    .line 947
    .end local v0    # "holder":[Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .restart local v0    # "holder":[Landroid/view/View;
    goto :goto_0
.end method
