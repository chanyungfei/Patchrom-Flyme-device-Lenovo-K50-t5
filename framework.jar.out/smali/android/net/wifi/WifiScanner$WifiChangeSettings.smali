.class public Landroid/net/wifi/WifiScanner$WifiChangeSettings;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiChangeSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiScanner$WifiChangeSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

.field public lostApSampleSize:I

.field public minApsBreachingThreshold:I

.field public periodInMs:I

.field public rssiSampleSize:I

.field public unchangedSampleSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 544
    new-instance v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;-><init>()V

    .line 543
    sput-object v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 508
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 523
    iget v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->rssiSampleSize:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->lostApSampleSize:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->unchangedSampleSize:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    iget v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->minApsBreachingThreshold:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    iget v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->periodInMs:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    if-eqz v2, :cond_0

    .line 529
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 531
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    aget-object v1, v2, v0

    .line 532
    .local v1, "info":Landroid/net/wifi/WifiScanner$BssidInfo;
    iget-object v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 533
    iget v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->low:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    iget v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->high:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    iget v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->frequencyHint:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 538
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    :cond_1
    return-void
.end method
