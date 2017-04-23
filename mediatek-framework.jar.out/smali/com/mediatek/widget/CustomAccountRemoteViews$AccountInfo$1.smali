.class final Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo$1;
.super Ljava/lang/Object;
.source "CustomAccountRemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
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
        "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 526
    new-instance v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    invoke-direct {v0, p1}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 525
    invoke-virtual {p0, p1}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 531
    new-array v0, p1, [Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo$1;->newArray(I)[Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    move-result-object v0

    return-object v0
.end method
