.class Llenovo/app/ActionBarDrawerToggle$DummyDelegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Llenovo/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyDelegate"
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    iput-object p1, p0, Llenovo/app/ActionBarDrawerToggle$DummyDelegate;->mActivity:Landroid/app/Activity;

    .line 640
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle$DummyDelegate;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionBarDescription(I)V
    .locals 0
    .param p1, "contentDescRes"    # I

    .prologue
    .line 650
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 645
    return-void
.end method
