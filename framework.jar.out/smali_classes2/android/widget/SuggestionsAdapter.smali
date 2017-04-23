.class Landroid/widget/SuggestionsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SuggestionsAdapter$ChildViewCache;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DELETE_KEY_POST_DELAY:J = 0x1f4L

.field static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SuggestionsAdapter"

.field private static final QUERY_LIMIT:I = 0x32

.field static final REFINE_ALL:I = 0x2

.field static final REFINE_BY_ENTRY:I = 0x1

.field static final REFINE_NONE:I


# instance fields
.field private mClosed:Z

.field private final mCommitIconResId:I

.field private mFlagsCol:I

.field private mIconName1Col:I

.field private mIconName2Col:I

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderContext:Landroid/content/Context;

.field private mQueryRefinement:I

.field private final mSearchManager:Landroid/app/SearchManager;

.field private final mSearchView:Landroid/widget/SearchView;

.field private final mSearchable:Landroid/app/SearchableInfo;

.field private mText1Col:I

.field private mText2Col:I

.field private mText2UrlCol:I

.field private mUrlColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "searchView"    # Landroid/widget/SearchView;
    .param p3, "searchable"    # Landroid/app/SearchableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/SearchView;",
            "Landroid/app/SearchableInfo;",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "outsideDrawablesCache":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable$ConstantState;>;"
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 106
    invoke-virtual {p2}, Landroid/widget/SearchView;->getSuggestionRowLayout()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/SuggestionsAdapter;->mClosed:Z

    .line 80
    iput v4, p0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    .line 88
    iput v3, p0, Landroid/widget/SuggestionsAdapter;->mText1Col:I

    .line 89
    iput v3, p0, Landroid/widget/SuggestionsAdapter;->mText2Col:I

    .line 90
    iput v3, p0, Landroid/widget/SuggestionsAdapter;->mText2UrlCol:I

    .line 91
    iput v3, p0, Landroid/widget/SuggestionsAdapter;->mIconName1Col:I

    .line 92
    iput v3, p0, Landroid/widget/SuggestionsAdapter;->mIconName2Col:I

    .line 93
    iput v3, p0, Landroid/widget/SuggestionsAdapter;->mFlagsCol:I

    .line 109
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    iput-object v1, p0, Landroid/widget/SuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    .line 110
    iput-object p2, p0, Landroid/widget/SuggestionsAdapter;->mSearchView:Landroid/widget/SearchView;

    .line 111
    iput-object p3, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    .line 112
    invoke-virtual {p2}, Landroid/widget/SearchView;->getSuggestionCommitIconResId()I

    move-result v1

    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mCommitIconResId:I

    .line 115
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v2, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/app/SearchableInfo;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 116
    .local v0, "activityContext":Landroid/content/Context;
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v2, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/app/SearchableInfo;->getProviderContext(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 118
    iput-object p4, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 133
    invoke-virtual {p0}, Landroid/widget/SuggestionsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    new-instance v2, Landroid/widget/SuggestionsAdapter$1;

    invoke-direct {v2, p0}, Landroid/widget/SuggestionsAdapter$1;-><init>(Landroid/widget/SuggestionsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/Filter;->setDelayer(Landroid/widget/Filter$Delayer;)V

    .line 105
    return-void
.end method

.method private checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "resourceUri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 639
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 640
    .local v0, "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_0

    .line 641
    return-object v2

    .line 644
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private formatUrl(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 391
    iget-object v0, p0, Landroid/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 393
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 394
    .local v6, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v3, 0x1160003

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v6, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 395
    iget v0, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    .line 398
    .end local v6    # "colorValue":Landroid/util/TypedValue;
    :cond_0
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 399
    .local v7, "text":Landroid/text/SpannableString;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 400
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 401
    const/16 v3, 0x21

    .line 399
    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 402
    return-object v7
.end method

.method private getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v9, 0x0

    .line 703
    iget-object v6, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 706
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    :try_start_0
    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 711
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v3

    .line 712
    .local v3, "iconId":I
    if-nez v3, :cond_0

    return-object v9

    .line 707
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "iconId":I
    :catch_0
    move-exception v2

    .line 708
    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "SuggestionsAdapter"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return-object v9

    .line 713
    .end local v2    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "iconId":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 714
    .local v4, "pkg":Ljava/lang/String;
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v4, v3, v6}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 715
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 716
    const-string/jumbo v6, "SuggestionsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid icon resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 717
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    .line 716
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return-object v9

    .line 720
    :cond_1
    return-object v1
.end method

.method private getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 681
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, "componentIconKey":Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 684
    iget-object v5, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 685
    .local v0, "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_0

    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 688
    .end local v0    # "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/SuggestionsAdapter;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 690
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_2

    const/4 v3, 0x0

    .line 691
    :goto_1
    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    return-object v2

    .line 690
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    .local v3, "toCache":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_1
.end method

.method public static getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 732
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 733
    .local v0, "col":I
    invoke-static {p0, v0}, Landroid/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 662
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/SuggestionsAdapter;->getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 663
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 664
    return-object v0

    .line 668
    :cond_0
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    .line 606
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 607
    .local v4, "scheme":Ljava/lang/String;
    const-string/jumbo v6, "android.resource"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 610
    iget-object v6, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 612
    .local v3, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_1
    iget-object v6, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v7, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    iget-object v8, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    return-object v6

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    new-instance v6, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Resource does not exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 632
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    .end local v4    # "scheme":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 633
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    const-string/jumbo v6, "SuggestionsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Icon not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return-object v10

    .line 618
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v4    # "scheme":Ljava/lang/String;
    :cond_0
    :try_start_3
    iget-object v6, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 619
    .local v5, "stream":Ljava/io/InputStream;
    if-nez v5, :cond_1

    .line 620
    new-instance v6, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 623
    :cond_1
    const/4 v6, 0x0

    :try_start_4
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    .line 626
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 623
    :goto_0
    return-object v6

    .line 627
    :catch_2
    move-exception v1

    .line 628
    .local v1, "ex":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v7, "SuggestionsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing icon stream for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 624
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 626
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 624
    :goto_1
    :try_start_8
    throw v6

    .line 627
    :catch_3
    move-exception v1

    .line 628
    .restart local v1    # "ex":Ljava/io/IOException;
    const-string/jumbo v7, "SuggestionsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing icon stream for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1
.end method

.method private getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "drawableId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 563
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 564
    :cond_0
    return-object v9

    .line 563
    :cond_1
    const-string/jumbo v6, "0"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 568
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 570
    .local v4, "resourceId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "android.resource://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 571
    iget-object v7, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 570
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 571
    const-string/jumbo v7, "/"

    .line 570
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "drawableUri":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 574
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 575
    return-object v0

    .line 578
    :cond_2
    iget-object v6, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 580
    invoke-direct {p0, v1, v0}, Landroid/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    return-object v0

    .line 592
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "drawableUri":Ljava/lang/String;
    .end local v4    # "resourceId":I
    :catch_0
    move-exception v2

    .line 594
    .local v2, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v6, "SuggestionsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Icon resource not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return-object v9

    .line 582
    .end local v2    # "nfe":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v3

    .line 584
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Landroid/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 585
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 586
    return-object v0

    .line 588
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 589
    .local v5, "uri":Landroid/net/Uri;
    invoke-direct {p0, v5}, Landroid/widget/SuggestionsAdapter;->getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 590
    invoke-direct {p0, p1, v0}, Landroid/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 591
    return-object v0
.end method

.method private getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 417
    iget v2, p0, Landroid/widget/SuggestionsAdapter;->mIconName1Col:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 418
    return-object v4

    .line 420
    :cond_0
    iget v2, p0, Landroid/widget/SuggestionsAdapter;->mIconName1Col:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "value":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 422
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 423
    return-object v0

    .line 425
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/SuggestionsAdapter;->getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 429
    iget v1, p0, Landroid/widget/SuggestionsAdapter;->mIconName2Col:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 430
    const/4 v1, 0x0

    return-object v1

    .line 432
    :cond_0
    iget v1, p0, Landroid/widget/SuggestionsAdapter;->mIconName2Col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private static getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "col"    # I

    .prologue
    const/4 v3, 0x0

    .line 737
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 738
    return-object v3

    .line 741
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SuggestionsAdapter"

    .line 744
    const-string/jumbo v2, "unexpected error retrieving valid column from cursor, did the remote process die?"

    .line 743
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 746
    return-object v3
.end method

.method private setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "nullVisibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 443
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 445
    if-nez p2, :cond_0

    .line 446
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 455
    invoke-virtual {p2, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 456
    const/4 v0, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_0
.end method

.method private setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 407
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    :goto_0
    return-void

    .line 412
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "resourceUri"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 648
    if-eqz p2, :cond_0

    .line 649
    iget-object v0, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    :cond_0
    return-void
.end method

.method private updateSpinnerState(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 248
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 256
    :goto_0
    if-eqz v0, :cond_1

    .line 257
    const-string/jumbo v1, "in_progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 256
    if-eqz v1, :cond_1

    .line 259
    return-void

    .line 248
    :cond_0
    const/4 v0, 0x0

    .local v0, "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 247
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    .line 333
    .local v3, "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    const/4 v0, 0x0

    .line 334
    .local v0, "flags":I
    iget v4, p0, Landroid/widget/SuggestionsAdapter;->mFlagsCol:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 335
    iget v4, p0, Landroid/widget/SuggestionsAdapter;->mFlagsCol:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 337
    :cond_0
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 338
    iget v4, p0, Landroid/widget/SuggestionsAdapter;->mText1Col:I

    invoke-static {p3, v4}, Landroid/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "text1":Ljava/lang/String;
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-direct {p0, v4, v1}, Landroid/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 341
    .end local v1    # "text1":Ljava/lang/String;
    :cond_1
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 343
    iget v4, p0, Landroid/widget/SuggestionsAdapter;->mText2UrlCol:I

    invoke-static {p3, v4}, Landroid/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "text2":Ljava/lang/CharSequence;
    if-eqz v2, :cond_7

    .line 345
    invoke-direct {p0, p2, v2}, Landroid/widget/SuggestionsAdapter;->formatUrl(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 352
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 353
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 354
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 355
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 363
    :cond_2
    :goto_1
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    invoke-direct {p0, v4, v2}, Landroid/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 366
    .end local v2    # "text2":Ljava/lang/CharSequence;
    :cond_3
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    .line 367
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Landroid/widget/SuggestionsAdapter;->getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {p0, v4, v5, v6}, Landroid/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 369
    :cond_4
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    .line 370
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Landroid/widget/SuggestionsAdapter;->getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v4, v5, v10}, Landroid/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 372
    :cond_5
    iget v4, p0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    if-eq v4, v9, :cond_6

    .line 373
    iget v4, p0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    if-ne v4, v8, :cond_9

    .line 374
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_9

    .line 375
    :cond_6
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 376
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    iget-object v5, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 377
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    :goto_2
    return-void

    .line 347
    .restart local v2    # "text2":Ljava/lang/CharSequence;
    :cond_7
    iget v4, p0, Landroid/widget/SuggestionsAdapter;->mText2Col:I

    invoke-static {p3, v4}, Landroid/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 358
    :cond_8
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 359
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 360
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 379
    .end local v2    # "text2":Ljava/lang/CharSequence;
    :cond_9
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 272
    iget-boolean v1, p0, Landroid/widget/SuggestionsAdapter;->mClosed:Z

    if-eqz v1, :cond_1

    .line 273
    const-string/jumbo v1, "SuggestionsAdapter"

    const-string/jumbo v2, "Tried to change cursor after adapter was closed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_0
    return-void

    .line 279
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 281
    if-eqz p1, :cond_2

    .line 282
    const-string/jumbo v1, "suggest_text_1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mText1Col:I

    .line 283
    const-string/jumbo v1, "suggest_text_2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mText2Col:I

    .line 284
    const-string/jumbo v1, "suggest_text_2_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mText2UrlCol:I

    .line 285
    const-string/jumbo v1, "suggest_icon_1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mIconName1Col:I

    .line 286
    const-string/jumbo v1, "suggest_icon_2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mIconName2Col:I

    .line 287
    const-string/jumbo v1, "suggest_flags"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mFlagsCol:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_2
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SuggestionsAdapter"

    const-string/jumbo v2, "error changing cursor and caching columns"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 219
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/widget/SuggestionsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SuggestionsAdapter;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 217
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 470
    if-nez p1, :cond_0

    .line 471
    return-object v4

    .line 474
    :cond_0
    const-string/jumbo v3, "suggest_intent_query"

    invoke-static {p1, v3}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "query":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 476
    return-object v1

    .line 479
    :cond_1
    iget-object v3, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 480
    const-string/jumbo v3, "suggest_intent_data"

    invoke-static {p1, v3}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 482
    return-object v0

    .line 486
    .end local v0    # "data":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 487
    const-string/jumbo v3, "suggest_text_1"

    invoke-static {p1, v3}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "text1":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 489
    return-object v2

    .line 493
    .end local v2    # "text1":Ljava/lang/String;
    :cond_3
    return-object v4
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SuggestionsAdapter;->mClosed:Z

    .line 225
    return-void
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 528
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 529
    :catch_0
    move-exception v1

    .line 530
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "SuggestionsAdapter"

    const-string/jumbo v6, "Search suggestions cursor threw exception."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    iget-object v5, p0, Landroid/widget/SuggestionsAdapter;->mDropDownContext:Landroid/content/Context;

    if-nez v5, :cond_1

    iget-object v0, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    .line 533
    .local v0, "context":Landroid/content/Context;
    :goto_0
    iget-object v5, p0, Landroid/widget/SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v5, p3}, Landroid/widget/SuggestionsAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 534
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 535
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    .line 536
    .local v4, "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    iget-object v2, v4, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 537
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    .end local v2    # "tv":Landroid/widget/TextView;
    .end local v4    # "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    :cond_0
    return-object v3

    .line 532
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Landroid/widget/SuggestionsAdapter;->mDropDownContext:Landroid/content/Context;

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method public getQueryRefinement()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 505
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "SuggestionsAdapter"

    const-string/jumbo v5, "Search suggestions cursor threw exception."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/widget/SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v4, v5, p3}, Landroid/widget/SuggestionsAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 510
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 511
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    .line 512
    .local v3, "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    iget-object v1, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 513
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    .end local v1    # "tv":Landroid/widget/TextView;
    .end local v3    # "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    :cond_0
    return-object v2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 299
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 300
    .local v1, "v":Landroid/view/View;
    new-instance v2, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    invoke-direct {v2, v1}, Landroid/widget/SuggestionsAdapter$ChildViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 303
    const v2, 0x10203b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 304
    .local v0, "iconRefine":Landroid/widget/ImageView;
    iget v2, p0, Landroid/widget/SuggestionsAdapter;->mCommitIconResId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->notifyDataSetChanged()V

    .line 236
    invoke-virtual {p0}, Landroid/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    .line 230
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->notifyDataSetInvalidated()V

    .line 244
    invoke-virtual {p0}, Landroid/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    .line 240
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 384
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 385
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mSearchView:Landroid/widget/SearchView;

    check-cast v0, Ljava/lang/CharSequence;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->onQueryRefine(Ljava/lang/CharSequence;)V

    .line 383
    :cond_0
    return-void
.end method

.method protected onContentChanged()V
    .locals 0

    .prologue
    .line 754
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->onContentChanged()V

    .line 755
    invoke-virtual {p0}, Landroid/widget/SuggestionsAdapter;->notifyDataSetChanged()V

    .line 753
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 7
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    .line 186
    if-nez p1, :cond_1

    const-string/jumbo v2, ""

    .line 191
    .local v2, "query":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .line 192
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v3, p0, Landroid/widget/SuggestionsAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 193
    iget-object v3, p0, Landroid/widget/SuggestionsAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getWindowVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    :cond_0
    return-object v6

    .line 186
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "query":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "query":Ljava/lang/String;
    goto :goto_0

    .line 198
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_0
    iget-object v3, p0, Landroid/widget/SuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    const/16 v5, 0x32

    invoke-virtual {v3, v4, v2, v5}, Landroid/app/SearchManager;->getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 201
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 202
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    return-object v0

    .line 205
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "SuggestionsAdapter"

    const-string/jumbo v4, "Search suggestions query threw an exception."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    return-object v6
.end method

.method public setQueryRefinement(I)V
    .locals 0
    .param p1, "refineWhat"    # I

    .prologue
    .line 158
    iput p1, p0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    .line 157
    return-void
.end method
