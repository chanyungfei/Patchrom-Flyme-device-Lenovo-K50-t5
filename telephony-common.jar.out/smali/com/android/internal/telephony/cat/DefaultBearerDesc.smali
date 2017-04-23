.class public Lcom/android/internal/telephony/cat/DefaultBearerDesc;
.super Lcom/android/internal/telephony/cat/BearerDesc;
.source "DefaultBearerDesc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/DefaultBearerDesc$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/DefaultBearerDesc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/android/internal/telephony/cat/DefaultBearerDesc$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/DefaultBearerDesc$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/DefaultBearerDesc;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BearerDesc;-><init>()V

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/cat/DefaultBearerDesc;->bearerType:I

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BearerDesc;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/DefaultBearerDesc;->bearerType:I

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/DefaultBearerDesc;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/DefaultBearerDesc;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/telephony/cat/DefaultBearerDesc;->bearerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return-void
.end method
