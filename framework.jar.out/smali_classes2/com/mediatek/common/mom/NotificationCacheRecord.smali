.class public Lcom/mediatek/common/mom/NotificationCacheRecord;
.super Ljava/lang/Object;
.source "NotificationCacheRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/mom/NotificationCacheRecord$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/common/mom/NotificationCacheRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NotificationCacheRecord"


# instance fields
.field public enable:Z

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/mediatek/common/mom/NotificationCacheRecord$1;

    invoke-direct {v0}, Lcom/mediatek/common/mom/NotificationCacheRecord$1;-><init>()V

    .line 100
    sput-object v0, Lcom/mediatek/common/mom/NotificationCacheRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/common/mom/NotificationCacheRecord;->packageName:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Lcom/mediatek/common/mom/NotificationCacheRecord;->enable:Z

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/common/mom/NotificationCacheRecord;->packageName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/common/mom/NotificationCacheRecord;->enable:Z

    .line 56
    return-void

    :cond_0
    move v0, v1

    .line 58
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/common/mom/NotificationCacheRecord;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/common/mom/NotificationCacheRecord;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/common/mom/NotificationCacheRecord;->packageName:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/common/mom/NotificationCacheRecord;->enable:Z

    .line 52
    iput-object p1, p0, Lcom/mediatek/common/mom/NotificationCacheRecord;->packageName:Ljava/lang/String;

    .line 53
    iput-boolean p2, p0, Lcom/mediatek/common/mom/NotificationCacheRecord;->enable:Z

    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    if-ne p0, p1, :cond_0

    .line 87
    return v1

    .line 90
    :cond_0
    instance-of v3, p1, Lcom/mediatek/common/mom/NotificationCacheRecord;

    if-nez v3, :cond_1

    .line 91
    return v2

    :cond_1
    move-object v0, p1

    .line 94
    check-cast v0, Lcom/mediatek/common/mom/NotificationCacheRecord;

    .line 96
    .local v0, "record":Lcom/mediatek/common/mom/NotificationCacheRecord;
    iget-object v3, p0, Lcom/mediatek/common/mom/NotificationCacheRecord;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/mediatek/common/mom/NotificationCacheRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    iget-boolean v3, p0, Lcom/mediatek/common/mom/NotificationCacheRecord;->enable:Z

    iget-boolean v4, v0, Lcom/mediatek/common/mom/NotificationCacheRecord;->enable:Z

    if-ne v3, v4, :cond_2

    .line 96
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 97
    goto :goto_0

    :cond_3
    move v1, v2

    .line 96
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/mediatek/common/mom/NotificationCacheRecord;->packageName:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/mediatek/common/mom/NotificationCacheRecord;->enable:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x1f

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/mediatek/common/mom/NotificationCacheRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NotificationCacheRecord {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/mediatek/common/mom/NotificationCacheRecord;->packageName:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    const-string/jumbo v1, ", "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    iget-boolean v1, p0, Lcom/mediatek/common/mom/NotificationCacheRecord;->enable:Z

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "}"

    .line 74
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
    .line 68
    iget-object v0, p0, Lcom/mediatek/common/mom/NotificationCacheRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-boolean v0, p0, Lcom/mediatek/common/mom/NotificationCacheRecord;->enable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
