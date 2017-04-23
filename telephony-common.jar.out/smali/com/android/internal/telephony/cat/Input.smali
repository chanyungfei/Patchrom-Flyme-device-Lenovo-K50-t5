.class public Lcom/android/internal/telephony/cat/Input;
.super Ljava/lang/Object;
.source "Input.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/Input$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/Input;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public defaultText:Ljava/lang/String;

.field public digitOnly:Z

.field public duration:Lcom/android/internal/telephony/cat/Duration;

.field public echo:Z

.field public helpAvailable:Z

.field public icon:Landroid/graphics/Bitmap;

.field public iconSelfExplanatory:Z

.field public maxLen:I

.field public minLen:I

.field public packed:Z

.field public text:Ljava/lang/String;

.field public ucs2:Z

.field public yesNo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/android/internal/telephony/cat/Input$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Input$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/Input;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    .line 53
    iput v1, p0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 61
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    .line 71
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 80
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Duration;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    :goto_6
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    .line 68
    return-void

    :cond_0
    move v0, v2

    .line 74
    goto :goto_0

    :cond_1
    move v0, v2

    .line 75
    goto :goto_1

    :cond_2
    move v0, v2

    .line 76
    goto :goto_2

    :cond_3
    move v0, v2

    .line 77
    goto :goto_3

    :cond_4
    move v0, v2

    .line 78
    goto :goto_4

    :cond_5
    move v0, v2

    .line 79
    goto :goto_5

    :cond_6
    move v1, v2

    .line 83
    goto :goto_6
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/Input;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/Input;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cat/Input;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/android/internal/telephony/cat/Input;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 130
    .local v0, "self":Lcom/android/internal/telephony/cat/Input;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "Icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 97
    iget v0, p0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 108
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    if-eqz v0, :cond_6

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return-void

    :cond_0
    move v0, v2

    .line 99
    goto :goto_0

    :cond_1
    move v0, v2

    .line 100
    goto :goto_1

    :cond_2
    move v0, v2

    .line 101
    goto :goto_2

    :cond_3
    move v0, v2

    .line 102
    goto :goto_3

    :cond_4
    move v0, v2

    .line 103
    goto :goto_4

    :cond_5
    move v0, v2

    .line 104
    goto :goto_5

    :cond_6
    move v1, v2

    .line 108
    goto :goto_6
.end method
