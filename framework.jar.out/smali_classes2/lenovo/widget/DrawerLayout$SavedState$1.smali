.class final Llenovo/widget/DrawerLayout$SavedState$1;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/DrawerLayout$SavedState;
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
        "Llenovo/widget/DrawerLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1571
    invoke-virtual {p0, p1}, Llenovo/widget/DrawerLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Llenovo/widget/DrawerLayout$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llenovo/widget/DrawerLayout$SavedState;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1572
    new-instance v0, Llenovo/widget/DrawerLayout$SavedState;

    invoke-direct {v0, p1}, Llenovo/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1576
    invoke-virtual {p0, p1}, Llenovo/widget/DrawerLayout$SavedState$1;->newArray(I)[Llenovo/widget/DrawerLayout$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Llenovo/widget/DrawerLayout$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1577
    new-array v0, p1, [Llenovo/widget/DrawerLayout$SavedState;

    return-object v0
.end method
