.class Llenovo/app/ActionBarDrawerToggle$JellybeanMr2Delegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Llenovo/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellybeanMr2Delegate"
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput-object p1, p0, Llenovo/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;

    .line 554
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Llenovo/app/ActionBarDrawerToggle$JellybeanMr2Delegate;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    invoke-direct {p0, p1}, Llenovo/app/ActionBarDrawerToggle$JellybeanMr2Delegate;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 569
    iget-object v2, p0, Llenovo/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 571
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    .line 576
    .local v1, "context":Landroid/content/Context;
    :goto_0
    return-object v1

    .line 574
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Llenovo/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;

    .restart local v1    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 560
    invoke-virtual {p0}, Llenovo/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v2

    .line 561
    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x101030b

    aput v4, v3, v6

    .line 560
    const/4 v4, 0x0

    .line 561
    const v5, 0x10102ce

    .line 560
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 562
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 563
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 564
    return-object v1
.end method

.method public setActionBarDescription(I)V
    .locals 2
    .param p1, "contentDescRes"    # I

    .prologue
    .line 590
    iget-object v1, p0, Llenovo/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 591
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 589
    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 581
    iget-object v1, p0, Llenovo/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 582
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 584
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 580
    :cond_0
    return-void
.end method
