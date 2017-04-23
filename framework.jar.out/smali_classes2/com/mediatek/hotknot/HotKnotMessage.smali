.class public final Lcom/mediatek/hotknot/HotKnotMessage;
.super Ljava/lang/Object;
.source "HotKnotMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hotknot/HotKnotMessage$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/hotknot/HotKnotMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mData:[B

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/mediatek/hotknot/HotKnotMessage$1;

    invoke-direct {v0}, Lcom/mediatek/hotknot/HotKnotMessage$1;-><init>()V

    sput-object v0, Lcom/mediatek/hotknot/HotKnotMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method constructor <init>(Lcom/mediatek/hotknot/HotKnotMessage;)V
    .locals 1
    .param p1, "msg"    # Lcom/mediatek/hotknot/HotKnotMessage;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/mediatek/hotknot/HotKnotMessage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotMessage;->mMimeType:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/mediatek/hotknot/HotKnotMessage;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotMessage;->mData:[B

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mimeType cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/mediatek/hotknot/HotKnotMessage;->mMimeType:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/mediatek/hotknot/HotKnotMessage;->mData:[B

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotMessage;->mData:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotMessage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "HotKnotMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "builder":Ljava/lang/StringBuilder;
    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotMessage;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotMessage;->mData:[B

    if-eqz v1, :cond_0

    .line 58
    const-string/jumbo v1, " length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotMessage;->mData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotMessage;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotMessage;->mData:[B

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotMessage;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotMessage;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 73
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
