.class public Lcom/mediatek/mmsdk/EffectHalVersion;
.super Ljava/lang/Object;
.source "EffectHalVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/EffectHalVersion$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/mmsdk/EffectHalVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMajor:I

.field private mMinor:I

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/mediatek/mmsdk/EffectHalVersion$1;

    invoke-direct {v0}, Lcom/mediatek/mmsdk/EffectHalVersion$1;-><init>()V

    .line 63
    sput-object v0, Lcom/mediatek/mmsdk/EffectHalVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string/jumbo v0, "Null"

    iput-object v0, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mName:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mMajor:I

    .line 36
    iput v1, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mMinor:I

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mName:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mMajor:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mMinor:I

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/mmsdk/EffectHalVersion;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/mmsdk/EffectHalVersion;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "major"    # I
    .param p3, "minor"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mName:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mMajor:I

    .line 42
    iput p3, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mMinor:I

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getMajor()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mMajor:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mMinor:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mName:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mMajor:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mMinor:I

    .line 57
    return-void
.end method

.method public setMajor(I)V
    .locals 0
    .param p1, "major"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mMajor:I

    .line 90
    return-void
.end method

.method public setMinor(I)V
    .locals 0
    .param p1, "minor"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mMinor:I

    .line 98
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lcom/mediatek/mmsdk/EffectHalVersion;->mMinor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return-void
.end method
