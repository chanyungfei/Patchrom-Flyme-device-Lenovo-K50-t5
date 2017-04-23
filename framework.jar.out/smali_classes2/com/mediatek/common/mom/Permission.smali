.class public Lcom/mediatek/common/mom/Permission;
.super Ljava/lang/Object;
.source "Permission.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/mom/Permission$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private static final ODD_PRIME_NUMBER:I = 0xd

.field private static final TAG:Ljava/lang/String; = "Permission"


# instance fields
.field private mFlag:I

.field private mHashCode:I

.field public mPermissionName:Ljava/lang/String;

.field private mStatus:I

.field public mSubPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/mediatek/common/mom/Permission$1;

    invoke-direct {v0}, Lcom/mediatek/common/mom/Permission$1;-><init>()V

    .line 150
    sput-object v0, Lcom/mediatek/common/mom/Permission;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v3, p0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    .line 54
    iput-object v3, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    .line 55
    iput v1, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    .line 56
    iput v1, p0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    .line 57
    iput v1, p0, Lcom/mediatek/common/mom/Permission;->mHashCode:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 71
    .local v0, "isPresent":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    .line 73
    iget-object v1, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    sget-object v2, Lcom/mediatek/common/mom/Permission;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 77
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    .line 79
    invoke-direct {p0}, Lcom/mediatek/common/mom/Permission;->makeHashCode()I

    move-result v1

    iput v1, p0, Lcom/mediatek/common/mom/Permission;->mHashCode:I

    .line 68
    return-void

    .line 70
    .end local v0    # "isPresent":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isPresent":Z
    goto :goto_0

    .line 75
    :cond_1
    iput-object v3, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/common/mom/Permission;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/common/mom/Permission;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;II)V
    .locals 2
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, "subPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/mom/Permission;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    .line 55
    iput v0, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    .line 56
    iput v0, p0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    .line 57
    iput v0, p0, Lcom/mediatek/common/mom/Permission;->mHashCode:I

    .line 61
    iput-object p1, p0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    .line 63
    iput p3, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    .line 64
    iput p4, p0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    .line 65
    invoke-direct {p0}, Lcom/mediatek/common/mom/Permission;->makeHashCode()I

    move-result v0

    iput v0, p0, Lcom/mediatek/common/mom/Permission;->mHashCode:I

    .line 60
    return-void
.end method

.method private makeHashCode()I
    .locals 5

    .prologue
    .line 84
    iget v3, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    add-int/lit16 v0, v3, 0x12b

    .line 85
    .local v0, "hashCode":I
    mul-int/lit8 v3, v0, 0xd

    iget v4, p0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    add-int v0, v3, v4

    .line 86
    iget-object v3, p0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 87
    mul-int/lit8 v3, v0, 0xd

    iget-object v4, p0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 91
    iget-object v3, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/mom/Permission;

    .line 92
    .local v2, "p":Lcom/mediatek/common/mom/Permission;
    if-eqz v2, :cond_1

    .line 93
    mul-int/lit8 v3, v0, 0xd

    iget-object v4, p0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 90
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    .end local v2    # "p":Lcom/mediatek/common/mom/Permission;
    :cond_2
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    if-ne p0, p1, :cond_0

    .line 132
    return v4

    .line 135
    :cond_0
    instance-of v1, p1, Lcom/mediatek/common/mom/Permission;

    if-nez v1, :cond_1

    .line 136
    return v3

    :cond_1
    move-object v0, p1

    .line 139
    check-cast v0, Lcom/mediatek/common/mom/Permission;

    .line 141
    .local v0, "record":Lcom/mediatek/common/mom/Permission;
    iget-object v1, p0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    iget v1, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    iget v2, v0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    if-eq v1, v2, :cond_3

    .line 145
    :cond_2
    return v3

    .line 143
    :cond_3
    iget v1, p0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    iget v2, v0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    if-ne v1, v2, :cond_2

    .line 144
    iget-object v1, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    return v4
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/mediatek/common/mom/Permission;->mHashCode:I

    return v0
.end method

.method public setStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 165
    :cond_0
    iput p1, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    .line 161
    :goto_0
    return-void

    .line 164
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 167
    const-string/jumbo v0, "Permission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid permission status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    const-string/jumbo v1, ", "

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    iget v1, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    const-string/jumbo v1, ", "

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    iget v1, p0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    const-string/jumbo v1, "}"

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 107
    iget-object v1, p0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 109
    .local v0, "isPresent":I
    :goto_0
    int-to-byte v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 110
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 113
    :cond_0
    iget v1, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v1, p0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void

    .line 108
    .end local v0    # "isPresent":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isPresent":I
    goto :goto_0
.end method
