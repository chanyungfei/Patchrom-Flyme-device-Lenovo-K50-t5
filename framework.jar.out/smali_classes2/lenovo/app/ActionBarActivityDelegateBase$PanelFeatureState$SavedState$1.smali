.class final Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState$1;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1738
    invoke-virtual {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1739
    invoke-static {p1}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->-wrap0(Landroid/os/Parcel;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1742
    invoke-virtual {p0, p1}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState$1;->newArray(I)[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1743
    new-array v0, p1, [Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;

    return-object v0
.end method
