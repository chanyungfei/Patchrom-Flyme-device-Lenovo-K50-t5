.class final Lcom/android/settings/deviceinfo/Memory$6;
.super Lcom/lenovo/settings/search/BaseSearchIndexProvider;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/lenovo/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const v3, 0x7f0c06ff

    .line 627
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableRaw;>;"
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 631
    .local v2, "screenTitle":Ljava/lang/String;
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 632
    .local v0, "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 633
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 634
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 647
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0c071a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 648
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 649
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 652
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0c0718

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 653
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 654
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 657
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0c0243

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 658
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 659
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 662
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0c071c

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 663
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 664
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 667
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0c0244

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 668
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 669
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 672
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0c0245

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 673
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 674
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 677
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0c0720

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 678
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 679
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 682
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0c071e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 683
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 684
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 687
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0c0722

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 688
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 689
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 692
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0c0721

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 693
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 694
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    return-object v1
.end method
