.class public final Landroid/view/Display$Mode;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$Mode$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ARRAY:[Landroid/view/Display$Mode;


# instance fields
.field private final mHeight:I

.field private final mModeId:I

.field private final mRefreshRate:F

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 919
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/Display$Mode;

    sput-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    .line 1045
    new-instance v0, Landroid/view/Display$Mode$1;

    invoke-direct {v0}, Landroid/view/Display$Mode$1;-><init>()V

    .line 1044
    sput-object v0, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 915
    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0
    .param p1, "modeId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "refreshRate"    # F

    .prologue
    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 930
    iput p1, p0, Landroid/view/Display$Mode;->mModeId:I

    .line 931
    iput p2, p0, Landroid/view/Display$Mode;->mWidth:I

    .line 932
    iput p3, p0, Landroid/view/Display$Mode;->mHeight:I

    .line 933
    iput p4, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    .line 929
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1032
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/Display$Mode;-><init>(IIIF)V

    .line 1031
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/Display$Mode;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/Display$Mode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1028
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 995
    if-ne p0, p1, :cond_0

    .line 996
    const/4 v1, 0x1

    return v1

    .line 998
    :cond_0
    instance-of v2, p1, Landroid/view/Display$Mode;

    if-nez v2, :cond_1

    .line 999
    return v1

    :cond_1
    move-object v0, p1

    .line 1001
    check-cast v0, Landroid/view/Display$Mode;

    .line 1002
    .local v0, "that":Landroid/view/Display$Mode;
    iget v2, p0, Landroid/view/Display$Mode;->mModeId:I

    iget v3, v0, Landroid/view/Display$Mode;->mModeId:I

    if-ne v2, v3, :cond_2

    iget v1, v0, Landroid/view/Display$Mode;->mWidth:I

    iget v2, v0, Landroid/view/Display$Mode;->mHeight:I

    iget v3, v0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public getModeId()I
    .locals 1

    .prologue
    .line 940
    iget v0, p0, Landroid/view/Display$Mode;->mModeId:I

    return v0
.end method

.method public getPhysicalHeight()I
    .locals 1

    .prologue
    .line 972
    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    return v0
.end method

.method public getPhysicalWidth()I
    .locals 1

    .prologue
    .line 956
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    return v0
.end method

.method public getRefreshRate()F
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1008
    iget v1, p0, Landroid/view/Display$Mode;->mModeId:I

    add-int/lit8 v0, v1, 0x11

    .line 1009
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mWidth:I

    add-int v0, v1, v2

    .line 1010
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mHeight:I

    add-int v0, v1, v2

    .line 1011
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1012
    return v0
.end method

.method public matches(IIF)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "refreshRate"    # F

    .prologue
    const/4 v0, 0x0

    .line 988
    iget v1, p0, Landroid/view/Display$Mode;->mWidth:I

    if-ne v1, p1, :cond_0

    .line 989
    iget v1, p0, Landroid/view/Display$Mode;->mHeight:I

    if-ne v1, p2, :cond_0

    .line 990
    iget v1, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 988
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1018
    const-string/jumbo v1, "id="

    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1018
    iget v1, p0, Landroid/view/Display$Mode;->mModeId:I

    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1019
    const-string/jumbo v1, ", width="

    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1019
    iget v1, p0, Landroid/view/Display$Mode;->mWidth:I

    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1020
    const-string/jumbo v1, ", height="

    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1020
    iget v1, p0, Landroid/view/Display$Mode;->mHeight:I

    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1021
    const-string/jumbo v1, ", fps="

    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1021
    iget v1, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1022
    const-string/jumbo v1, "}"

    .line 1017
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 1037
    iget v0, p0, Landroid/view/Display$Mode;->mModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1038
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1036
    return-void
.end method
