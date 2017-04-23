.class final Landroid/location/GpsStatus$SatelliteIterator;
.super Ljava/lang/Object;
.source "GpsStatus.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SatelliteIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/location/GpsSatellite;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private final mSatellites:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private final mSatellitesCount:I

.field final synthetic this$0:Landroid/location/GpsStatus;


# direct methods
.method constructor <init>(Landroid/location/GpsStatus;Landroid/util/SparseArray;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/GpsStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "satellites":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/location/GpsSatellite;>;"
    iput-object p1, p0, Landroid/location/GpsStatus$SatelliteIterator;->this$0:Landroid/location/GpsStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    .line 49
    iput-object p2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:Landroid/util/SparseArray;

    .line 50
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    iput v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellitesCount:I

    .line 48
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .line 54
    :goto_0
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellitesCount:I

    if-ge v1, v2, :cond_1

    .line 55
    iget-object v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:Landroid/util/SparseArray;

    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .line 56
    .local v0, "satellite":Landroid/location/GpsSatellite;
    iget-boolean v1, v0, Landroid/location/GpsSatellite;->mValid:Z

    if-eqz v1, :cond_0

    .line 57
    const/4 v1, 0x1

    return v1

    .line 54
    :cond_0
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    goto :goto_0

    .line 60
    .end local v0    # "satellite":Landroid/location/GpsSatellite;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public next()Landroid/location/GpsSatellite;
    .locals 3

    .prologue
    .line 64
    :cond_0
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellitesCount:I

    if-ge v1, v2, :cond_1

    .line 65
    iget-object v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:Landroid/util/SparseArray;

    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .line 66
    .local v0, "satellite":Landroid/location/GpsSatellite;
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    .line 67
    iget-boolean v1, v0, Landroid/location/GpsSatellite;->mValid:Z

    if-eqz v1, :cond_0

    .line 68
    return-object v0

    .line 71
    .end local v0    # "satellite":Landroid/location/GpsSatellite;
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/location/GpsStatus$SatelliteIterator;->next()Landroid/location/GpsSatellite;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
