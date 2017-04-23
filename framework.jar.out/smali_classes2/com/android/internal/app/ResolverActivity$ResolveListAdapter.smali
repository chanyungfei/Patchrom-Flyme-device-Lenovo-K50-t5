.class Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterLastUsed:Z

.field private mHasExtendedInfo:Z

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field private mLastChosenPosition:I

.field private final mLaunchedFromUid:I

.field mOrigResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .param p7, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 1155
    .local p3, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1152
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1158
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    .line 1159
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 1160
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 1161
    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    .line 1162
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    .line 1164
    iput-boolean p7, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    .line 1165
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 1157
    return-void
.end method

.method private addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 2
    .param p1, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1579
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->-get0(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-nez v0, :cond_0

    .line 1582
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1578
    :goto_0
    return-void

    .line 1584
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 11
    .param p1, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "extraInfo"    # Ljava/lang/CharSequence;
    .param p3, "roLabel"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 1552
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v9

    .line 1553
    .local v9, "count":I
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v2

    .line 1554
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1555
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/app/ResolverActivity;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    .line 1556
    .local v6, "replaceIntent":Landroid/content/Intent;
    new-instance v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1558
    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 1559
    if-ne v6, v2, :cond_0

    .line 1562
    const/4 v10, 0x1

    .local v10, "i":I
    move v7, v9

    .local v7, "N":I
    :goto_0
    if-ge v10, v7, :cond_0

    .line 1563
    invoke-virtual {p1, v10}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v8

    .line 1564
    .local v8, "altIntent":Landroid/content/Intent;
    invoke-virtual {v0, v8}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->addAlternateSourceIntent(Landroid/content/Intent;)V

    .line 1562
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1567
    .end local v7    # "N":I
    .end local v8    # "altIntent":Landroid/content/Intent;
    .end local v10    # "i":I
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V

    .line 1551
    return-void
.end method

.method private addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V
    .locals 11
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1465
    .local p1, "into":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .local p3, "from":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 1466
    .local v1, "fromCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1467
    .local v3, "intoCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1468
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1469
    .local v5, "newInfo":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 1471
    .local v0, "found":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 1472
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1473
    .local v6, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-direct {p0, v5, v6}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1474
    const/4 v0, 0x1

    .line 1475
    invoke-virtual {v6, p2, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 1479
    .end local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_0
    if-nez v0, :cond_1

    .line 1480
    new-instance v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    new-instance v8, Landroid/content/ComponentName;

    .line 1481
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1480
    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v8, p2, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1467
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1471
    .restart local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1464
    .end local v0    # "found":Z
    .end local v4    # "j":I
    .end local v5    # "newInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_3
    return-void
.end method

.method private isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 3
    .param p1, "a"    # Landroid/content/pm/ResolveInfo;
    .param p2, "b"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .prologue
    .line 1488
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1489
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1490
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1489
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1690
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    .line 1691
    .local v1, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1693
    const-string/jumbo v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBindView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1697
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSmartFit(Z)V

    .line 1698
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1701
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1702
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1703
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1707
    :goto_0
    instance-of v2, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 1708
    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1711
    :cond_0
    :goto_1
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1712
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 1713
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1714
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 1715
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1716
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1717
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1689
    .end local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_2
    return-void

    .line 1705
    :cond_2
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1709
    :cond_3
    new-instance v3, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v2, p2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-direct {v3, v4, v2}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 1719
    .restart local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V
    .locals 15
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;II",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1504
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    sub-int v13, p3, p2

    add-int/lit8 v9, v13, 0x1

    .line 1505
    .local v9, "num":I
    const/4 v13, 0x1

    if-ne v9, v13, :cond_1

    .line 1507
    const/4 v13, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v13, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1502
    :cond_0
    return-void

    .line 1509
    :cond_1
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    .line 1510
    const/4 v12, 0x0

    .line 1511
    .local v12, "usePkg":Z
    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1512
    iget-object v14, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v14}, Lcom/android/internal/app/ResolverActivity;->-get6(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1511
    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1513
    .local v11, "startApp":Ljava/lang/CharSequence;
    if-nez v11, :cond_2

    .line 1514
    const/4 v12, 0x1

    .line 1516
    :cond_2
    if-nez v12, :cond_5

    .line 1519
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1520
    .local v3, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1521
    add-int/lit8 v5, p2, 0x1

    .local v5, "j":I
    :goto_0
    move/from16 v0, p3

    if-gt v5, v0, :cond_4

    .line 1522
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 1523
    .local v7, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v13, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v14}, Lcom/android/internal/app/ResolverActivity;->-get6(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1524
    .local v6, "jApp":Ljava/lang/CharSequence;
    if-eqz v6, :cond_3

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1525
    :cond_3
    const/4 v12, 0x1

    .line 1532
    .end local v6    # "jApp":Ljava/lang/CharSequence;
    .end local v7    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1534
    .end local v3    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v5    # "j":I
    :cond_5
    move/from16 v8, p2

    .local v8, "k":I
    :goto_1
    move/from16 v0, p3

    if-gt v8, v0, :cond_0

    .line 1535
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1536
    .local v10, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1538
    .local v2, "add":Landroid/content/pm/ResolveInfo;
    if-eqz v12, :cond_7

    .line 1540
    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1545
    .local v4, "extraInfo":Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p5

    invoke-direct {p0, v10, v4, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1534
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1528
    .end local v2    # "add":Landroid/content/pm/ResolveInfo;
    .end local v4    # "extraInfo":Ljava/lang/CharSequence;
    .end local v8    # "k":I
    .end local v10    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v3    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v5    # "j":I
    .restart local v6    # "jApp":Ljava/lang/CharSequence;
    .restart local v7    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1521
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1543
    .end local v3    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v5    # "j":I
    .end local v6    # "jApp":Ljava/lang/CharSequence;
    .end local v7    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "k":I
    .restart local v10    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_7
    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v14}, Lcom/android/internal/app/ResolverActivity;->-get6(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "extraInfo":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method private rebuildList()V
    .locals 44

    .prologue
    .line 1220
    const/16 v20, 0x0

    .line 1223
    .local v20, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v31

    .line 1224
    .local v31, "primaryIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1225
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 1226
    const/high16 v8, 0x10000

    .line 1224
    move-object/from16 v0, v31

    invoke-interface {v4, v0, v5, v8}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    .end local v31    # "primaryIntent":Landroid/content/Intent;
    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 1235
    new-instance v20, Ljava/util/ArrayList;

    .end local v20    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 1236
    .local v20, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    .line 1277
    .end local v20    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :cond_0
    const/4 v14, 0x0

    .line 1278
    .local v14, "CtsTag":I
    const/16 v40, 0x0

    .line 1279
    .local v40, "saveRsInfo":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    if-eqz v20, :cond_c

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_c

    .line 1280
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .end local v40    # "saveRsInfo":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .local v39, "rsinfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1282
    .local v38, "rsinfo":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v19

    .line 1283
    .local v19, "count":I
    const/16 v24, 0x0

    .local v24, "index":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 1284
    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    .line 1286
    .local v17, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "com.android.documentsui"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1287
    move-object/from16 v40, v38

    .line 1288
    .local v40, "saveRsInfo":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    add-int/lit8 v14, v14, 0x1

    .line 1283
    .end local v40    # "saveRsInfo":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_2
    :goto_2
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 1227
    .end local v14    # "CtsTag":I
    .end local v17    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "count":I
    .end local v24    # "index":I
    .end local v38    # "rsinfo":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v39    # "rsinfo$iterator":Ljava/util/Iterator;
    .local v20, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :catch_0
    move-exception v36

    .line 1228
    .local v36, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error calling setLastChosenActivity\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1238
    .end local v36    # "re":Landroid/os/RemoteException;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->shouldGetResolvedFilter()Z

    move-result v42

    .line 1239
    .local v42, "shouldGetResolvedFilter":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->shouldGetActivityMetadata()Z

    move-result v41

    .line 1240
    .local v41, "shouldGetActivityMetadata":Z
    const/16 v23, 0x0

    .local v23, "i":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    .end local v20    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .local v15, "N":I
    :goto_3
    move/from16 v0, v23

    if-ge v0, v15, :cond_8

    .line 1241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 1242
    .local v28, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get6(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1244
    if-eqz v42, :cond_6

    const/16 v4, 0x40

    .line 1243
    :goto_4
    const/high16 v8, 0x10000

    or-int/2addr v8, v4

    .line 1245
    if-eqz v41, :cond_7

    const/16 v4, 0x80

    .line 1243
    :goto_5
    or-int/2addr v4, v8

    .line 1242
    move-object/from16 v0, v28

    invoke-virtual {v5, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v27

    .line 1246
    .local v27, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v27, :cond_5

    .line 1247
    if-nez v20, :cond_4

    .line 1248
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 1250
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    .line 1240
    :cond_5
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 1244
    .end local v27    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    .line 1245
    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 1259
    .end local v28    # "intent":Landroid/content/Intent;
    :cond_8
    if-eqz v20, :cond_0

    .line 1260
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v23, v4, -0x1

    :goto_6
    if-ltz v23, :cond_0

    .line 1261
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1262
    const/4 v5, 0x0

    .line 1261
    invoke-virtual {v4, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    .line 1264
    .local v16, "ai":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    .line 1265
    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v16

    iget-boolean v9, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 1263
    invoke-static {v4, v5, v8, v9}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v22

    .line 1266
    .local v22, "granted":I
    if-eqz v22, :cond_a

    .line 1268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v0, v20

    if-ne v4, v0, :cond_9

    .line 1269
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 1271
    :cond_9
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1260
    :cond_a
    add-int/lit8 v23, v23, -0x1

    goto :goto_6

    .line 1289
    .end local v15    # "N":I
    .end local v16    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v22    # "granted":I
    .end local v23    # "i":I
    .end local v41    # "shouldGetActivityMetadata":Z
    .end local v42    # "shouldGetResolvedFilter":Z
    .restart local v14    # "CtsTag":I
    .restart local v17    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v19    # "count":I
    .restart local v24    # "index":I
    .restart local v38    # "rsinfo":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v39    # "rsinfo$iterator":Ljava/util/Iterator;
    :cond_b
    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "com.android.cts.documentprovider"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1290
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1295
    .end local v17    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "count":I
    .end local v24    # "index":I
    .end local v38    # "rsinfo":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v39    # "rsinfo$iterator":Ljava/util/Iterator;
    :cond_c
    if-eqz v40, :cond_d

    .line 1296
    const/4 v4, 0x2

    if-ne v14, v4, :cond_10

    .line 1297
    const-string/jumbo v4, "ResolverActivity"

    const-string/jumbo v5, "May be running CTS: com.android.cts.documentprovider......"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 1299
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1307
    :cond_d
    :goto_7
    if-eqz v20, :cond_22

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v15

    .restart local v15    # "N":I
    if-lez v15, :cond_22

    .line 1310
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1311
    .local v12, "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v32

    .line 1312
    .local v32, "r0":Landroid/content/pm/ResolveInfo;
    const/16 v23, 0x1

    .restart local v23    # "i":I
    :goto_8
    move/from16 v0, v23

    if-ge v0, v15, :cond_12

    .line 1313
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 1320
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v32

    iget v4, v0, Landroid/content/pm/ResolveInfo;->priority:I

    iget v5, v7, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v4, v5, :cond_e

    .line 1321
    move-object/from16 v0, v32

    iget-boolean v4, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, v7, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v4, v5, :cond_11

    .line 1322
    :cond_e
    :goto_9
    move/from16 v0, v23

    if-ge v0, v15, :cond_11

    .line 1323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v0, v20

    if-ne v4, v0, :cond_f

    .line 1324
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 1326
    :cond_f
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1327
    add-int/lit8 v15, v15, -0x1

    goto :goto_9

    .line 1300
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v12    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v15    # "N":I
    .end local v23    # "i":I
    .end local v32    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_10
    const/4 v4, 0x1

    if-ne v14, v4, :cond_d

    .line 1301
    const-string/jumbo v4, "ResolverActivity"

    const-string/jumbo v5, "remove com.android.documentsui action....."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1312
    .restart local v7    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v15    # "N":I
    .restart local v23    # "i":I
    .restart local v32    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_11
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 1331
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_12
    const/4 v4, 0x1

    if-le v15, v4, :cond_13

    .line 1332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get9(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/internal/app/ResolverComparator;->compute(Ljava/util/List;)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get9(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1337
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const-class v4, Lcom/mediatek/common/media/IRCSePriorityExt;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4, v8}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/media/IRCSePriorityExt;

    invoke-static {v5, v4}, Lcom/android/internal/app/ResolverActivity;->-set3(Lcom/android/internal/app/ResolverActivity;Lcom/mediatek/common/media/IRCSePriorityExt;)Lcom/mediatek/common/media/IRCSePriorityExt;

    .line 1338
    const-string/jumbo v4, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "RCSe Plugin initiated "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v8}, Lcom/android/internal/app/ResolverActivity;->-get8(Lcom/android/internal/app/ResolverActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get8(Lcom/android/internal/app/ResolverActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 1340
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "info$iterator":Ljava/util/Iterator;
    :cond_14
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1341
    .local v25, "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v19

    .line 1342
    .restart local v19    # "count":I
    const/16 v21, 0x0

    .line 1343
    .local v21, "found":Z
    const/16 v24, 0x0

    .restart local v24    # "index":I
    :goto_a
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_15

    .line 1344
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    .line 1346
    .local v18, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "com.orangelabs.rcs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1347
    const-string/jumbo v4, "ResolverActivity"

    const-string/jumbo v5, "rebuild list after sort"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1349
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1350
    const/16 v21, 0x1

    .line 1354
    .end local v18    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_15
    if-eqz v21, :cond_14

    .line 1359
    .end local v19    # "count":I
    .end local v21    # "found":Z
    .end local v24    # "index":I
    .end local v25    # "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v26    # "info$iterator":Ljava/util/Iterator;
    :cond_16
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 1363
    .local v30, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v4, :cond_1c

    .line 1364
    const/16 v23, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v4, v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_1c

    .line 1365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v6, v4, v23

    .line 1366
    .local v6, "ii":Landroid/content/Intent;
    if-nez v6, :cond_18

    .line 1364
    :goto_c
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 1343
    .end local v6    # "ii":Landroid/content/Intent;
    .end local v30    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v19    # "count":I
    .restart local v21    # "found":Z
    .restart local v24    # "index":I
    .restart local v25    # "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v26    # "info$iterator":Ljava/util/Iterator;
    :cond_17
    add-int/lit8 v24, v24, 0x1

    goto :goto_a

    .line 1370
    .end local v18    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "count":I
    .end local v21    # "found":Z
    .end local v24    # "index":I
    .end local v25    # "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v26    # "info$iterator":Ljava/util/Iterator;
    .restart local v6    # "ii":Landroid/content/Intent;
    .restart local v30    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    .line 1369
    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v16

    .line 1371
    .restart local v16    # "ai":Landroid/content/pm/ActivityInfo;
    if-nez v16, :cond_19

    .line 1372
    const-string/jumbo v4, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No activity found for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1375
    :cond_19
    new-instance v7, Landroid/content/pm/ResolveInfo;

    invoke-direct {v7}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1376
    .restart local v7    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iput-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/os/UserManager;

    .line 1379
    .local v43, "userManager":Landroid/os/UserManager;
    instance-of v4, v6, Landroid/content/pm/LabeledIntent;

    if-eqz v4, :cond_1a

    move-object/from16 v29, v6

    .line 1380
    check-cast v29, Landroid/content/pm/LabeledIntent;

    .line 1381
    .local v29, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1382
    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v4

    iput v4, v7, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1383
    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v7, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1384
    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v4

    iput v4, v7, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1385
    iget v4, v7, Landroid/content/pm/ResolveInfo;->icon:I

    iput v4, v7, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 1388
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get8(Lcom/android/internal/app/ResolverActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 1390
    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    .end local v29    # "li":Landroid/content/pm/LabeledIntent;
    :cond_1a
    invoke-virtual/range {v43 .. v43}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1396
    const/4 v4, 0x1

    iput-boolean v4, v7, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 1397
    const/4 v4, 0x0

    iput v4, v7, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1399
    :cond_1b
    new-instance v4, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 1400
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v8}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    move-object v10, v6

    .line 1399
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    goto/16 :goto_c

    .line 1405
    .end local v6    # "ii":Landroid/content/Intent;
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v16    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v43    # "userManager":Landroid/os/UserManager;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get8(Lcom/android/internal/app/ResolverActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 1406
    const/16 v34, -0x1

    .line 1407
    .local v34, "rcseIndex":I
    const-string/jumbo v4, "ResolverActivity"

    const-string/jumbo v5, "mRCSePriorityExt to sort the list"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get8(Lcom/android/internal/app/ResolverActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-interface {v4, v0}, Lcom/mediatek/common/media/IRCSePriorityExt;->sortTheListForRCSe(Ljava/util/ArrayList;)I

    move-result v34

    .line 1410
    const/4 v4, -0x1

    move/from16 v0, v34

    if-eq v0, v4, :cond_1d

    .line 1411
    const-string/jumbo v4, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mRCSePriorityExt to sort the list index is"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    move/from16 v0, v34

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1413
    .local v35, "rcseInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    move/from16 v0, v34

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-interface {v4, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1421
    .end local v34    # "rcseIndex":I
    .end local v35    # "rcseInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    :cond_1d
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    check-cast v12, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1422
    .restart local v12    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v32

    .line 1423
    const/4 v10, 0x0

    .line 1424
    .local v10, "start":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get6(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1425
    .local v13, "r0Label":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    .line 1427
    const/4 v4, 0x1

    if-le v15, v4, :cond_21

    .line 1429
    const/16 v23, 0x1

    :goto_d
    move/from16 v0, v23

    if-ge v0, v15, :cond_21

    .line 1430
    if-nez v13, :cond_1e

    .line 1431
    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1433
    :cond_1e
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1434
    .local v33, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 1435
    .restart local v7    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get6(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v37

    .line 1436
    .local v37, "riLabel":Ljava/lang/CharSequence;
    if-nez v37, :cond_1f

    .line 1437
    iget-object v4, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 1439
    :cond_1f
    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1429
    :goto_e
    add-int/lit8 v23, v23, 0x1

    goto :goto_d

    .line 1442
    :cond_20
    add-int/lit8 v11, v23, -0x1

    move-object/from16 v8, p0

    move-object/from16 v9, v20

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    .line 1443
    move-object/from16 v12, v33

    .line 1444
    move-object/from16 v32, v7

    .line 1445
    move-object/from16 v13, v37

    .line 1446
    move/from16 v10, v23

    goto :goto_e

    .line 1450
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v33    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v37    # "riLabel":Ljava/lang/CharSequence;
    :cond_21
    add-int/lit8 v11, v15, -0x1

    move-object/from16 v8, p0

    move-object/from16 v9, v20

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    .line 1455
    .end local v10    # "start":I
    .end local v12    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v13    # "r0Label":Ljava/lang/CharSequence;
    .end local v15    # "N":I
    .end local v23    # "i":I
    .end local v30    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v32    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v4, :cond_23

    .line 1456
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1457
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    .line 1460
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onListRebuilt()V

    .line 1219
    return-void
.end method

.method private updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    .line 1572
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1571
    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1571
    if-eqz v0, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1570
    :cond_0
    return-void
.end method


# virtual methods
.method public final bindView(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1686
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 1685
    return-void
.end method

.method public final createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1670
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1671
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1672
    .local v0, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1673
    return-object v1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 1608
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1609
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v1, :cond_0

    .line 1610
    add-int/lit8 v0, v0, -0x1

    .line 1612
    :cond_0
    return v0
.end method

.method public getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getDisplayInfoCount()I
    .locals 1

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method protected getDisplayResolveInfoCount()I
    .locals 1

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 2

    .prologue
    .line 1193
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0

    .line 1197
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilteredPosition()I
    .locals 1

    .prologue
    .line 1205
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 1206
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    return v0

    .line 1208
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1628
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-lt p1, v0, :cond_0

    .line 1629
    add-int/lit8 p1, p1, 0x1

    .line 1631
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1627
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1635
    int-to-long v0, p1

    return-wide v0
.end method

.method public getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-get9(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverComparator;->getScore(Landroid/content/ComponentName;)F

    move-result v0

    return v0
.end method

.method public getUnfilteredCount()I
    .locals 1

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1661
    move-object v0, p2

    .line 1662
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1663
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1665
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 1666
    return-object v0
.end method

.method public handlePackagesChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1169
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    .line 1170
    .local v3, "oldItemCount":I
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 1171
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 1172
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v2

    .line 1173
    .local v2, "newItemCount":I
    if-nez v2, :cond_1

    .line 1175
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1178
    :cond_1
    if-eq v2, v3, :cond_0

    .line 1179
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get3(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1180
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get1(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    .line 1181
    .local v0, "checkedPos":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    const/4 v1, 0x1

    .line 1182
    .local v1, "hasValidSelection":Z
    :goto_1
    if-eqz v1, :cond_0

    if-lt v0, v2, :cond_0

    .line 1183
    const-string/jumbo v4, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handlePackagesChanged: checkedPos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " >= newItemCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", disable buttons"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get2(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1185
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get5(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1181
    .end local v1    # "hasValidSelection":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "hasValidSelection":Z
    goto :goto_1
.end method

.method public hasExtendedInfo()Z
    .locals 1

    .prologue
    .line 1639
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    return v0
.end method

.method public hasFilteredItem()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1212
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1643
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1644
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/app/ResolverActivity;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1645
    const/4 v2, 0x1

    return v2

    .line 1643
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1648
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1678
    const v1, 0x10900be

    const/4 v2, 0x0

    .line 1677
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListRebuilt()V
    .locals 0

    .prologue
    .line 1493
    return-void
.end method

.method public resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 1590
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1591
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1594
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    goto :goto_0
.end method

.method public shouldGetResolvedFilter()Z
    .locals 1

    .prologue
    .line 1498
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    return v0
.end method

.method public showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 1682
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 1600
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1601
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1604
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    goto :goto_0
.end method
