.class Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field featureId:I

.field isOpen:Z

.field menuState:Landroid/os/Bundle;


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
    .locals 1
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-static {p0}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1737
    new-instance v0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState$1;

    invoke-direct {v0}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState$1;-><init>()V

    .line 1736
    sput-object v0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1706
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;-><init>()V

    return-void
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
    .locals 3
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 1725
    new-instance v0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;

    invoke-direct {v0}, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;-><init>()V

    .line 1726
    .local v0, "savedState":Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->featureId:I

    .line 1727
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_0
    iput-boolean v1, v0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->isOpen:Z

    .line 1729
    iget-boolean v1, v0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v1, :cond_0

    .line 1730
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 1733
    :cond_0
    return-object v0

    .line 1727
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1712
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1716
    iget v0, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->featureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1717
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1719
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1715
    :cond_0
    return-void

    .line 1717
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
