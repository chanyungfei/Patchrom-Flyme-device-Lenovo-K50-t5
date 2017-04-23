.class final Landroid/net/LinkAddress$1;
.super Ljava/lang/Object;
.source "LinkAddress.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkAddress;
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
        "Landroid/net/LinkAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkAddress;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 369
    const/4 v2, 0x0

    .line 371
    .local v2, "address":Ljava/net/InetAddress;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 377
    .end local v2    # "address":Ljava/net/InetAddress;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 378
    .local v3, "prefixLength":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 379
    .local v4, "flags":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 380
    .local v5, "scope":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 381
    .local v6, "valid":J
    new-instance v1, Landroid/net/LinkAddress;

    invoke-direct/range {v1 .. v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;IIIJ)V

    return-object v1

    .line 372
    .end local v3    # "prefixLength":I
    .end local v4    # "flags":I
    .end local v5    # "scope":I
    .end local v6    # "valid":J
    .restart local v2    # "address":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/UnknownHostException;
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Landroid/net/LinkAddress$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkAddress;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/LinkAddress;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 385
    new-array v0, p1, [Landroid/net/LinkAddress;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Landroid/net/LinkAddress$1;->newArray(I)[Landroid/net/LinkAddress;

    move-result-object v0

    return-object v0
.end method
