.class public Lcom/mediatek/common/mom/PermissionRecord;
.super Ljava/lang/Object;
.source "PermissionRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/mom/PermissionRecord$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIM_NUMBER:I = 0x11

.field private static final TAG:Ljava/lang/String; = "PermissionRecord"


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mPermissionName:Ljava/lang/String;

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/mediatek/common/mom/PermissionRecord$1;

    invoke-direct {v0}, Lcom/mediatek/common/mom/PermissionRecord$1;-><init>()V

    .line 119
    sput-object v0, Lcom/mediatek/common/mom/PermissionRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/common/mom/PermissionRecord;->mStatus:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/common/mom/PermissionRecord;->mStatus:I

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/common/mom/PermissionRecord;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/common/mom/PermissionRecord;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "status"    # I

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/common/mom/PermissionRecord;->mStatus:I

    .line 59
    iput-object p1, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    .line 61
    iput p3, p0, Lcom/mediatek/common/mom/PermissionRecord;->mStatus:I

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    if-ne p0, p1, :cond_0

    .line 105
    return v1

    .line 108
    :cond_0
    instance-of v3, p1, Lcom/mediatek/common/mom/PermissionRecord;

    if-nez v3, :cond_1

    .line 109
    return v2

    :cond_1
    move-object v0, p1

    .line 112
    check-cast v0, Lcom/mediatek/common/mom/PermissionRecord;

    .line 114
    .local v0, "record":Lcom/mediatek/common/mom/PermissionRecord;
    iget-object v3, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 115
    iget-object v3, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    iget-object v4, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 114
    if-eqz v3, :cond_3

    .line 116
    iget v3, p0, Lcom/mediatek/common/mom/PermissionRecord;->mStatus:I

    iget v4, v0, Lcom/mediatek/common/mom/PermissionRecord;->mStatus:I

    if-ne v3, v4, :cond_2

    .line 114
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 116
    goto :goto_0

    :cond_3
    move v1, v2

    .line 114
    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/mediatek/common/mom/PermissionRecord;->mStatus:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 91
    iget v1, p0, Lcom/mediatek/common/mom/PermissionRecord;->mStatus:I

    add-int/lit16 v0, v1, 0x187

    .line 92
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 93
    mul-int/lit8 v1, v0, 0x11

    iget-object v2, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 96
    mul-int/lit8 v1, v0, 0x11

    iget-object v2, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 98
    :cond_1
    return v0
.end method

.method public setStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 134
    :cond_0
    iput p1, p0, Lcom/mediatek/common/mom/PermissionRecord;->mStatus:I

    .line 130
    :goto_0
    return-void

    .line 133
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 136
    const-string/jumbo v0, "PermissionRecord"

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
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PermissionRecord {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    const-string/jumbo v1, ", "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    const-string/jumbo v1, ", "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    iget v1, p0, Lcom/mediatek/common/mom/PermissionRecord;->mStatus:I

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    const-string/jumbo v1, "}"

    .line 84
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
    .line 77
    iget-object v0, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lcom/mediatek/common/mom/PermissionRecord;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return-void
.end method
