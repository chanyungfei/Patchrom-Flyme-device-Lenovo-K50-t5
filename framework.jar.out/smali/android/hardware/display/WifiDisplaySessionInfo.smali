.class public final Landroid/hardware/display/WifiDisplaySessionInfo;
.super Ljava/lang/Object;
.source "WifiDisplaySessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/WifiDisplaySessionInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/display/WifiDisplaySessionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClient:Z

.field private final mGroupId:Ljava/lang/String;

.field private final mIP:Ljava/lang/String;

.field private final mPassphrase:Ljava/lang/String;

.field private final mSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Landroid/hardware/display/WifiDisplaySessionInfo$1;

    invoke-direct {v0}, Landroid/hardware/display/WifiDisplaySessionInfo$1;-><init>()V

    .line 44
    sput-object v0, Landroid/hardware/display/WifiDisplaySessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 64
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "client"    # Z
    .param p2, "session"    # I
    .param p3, "group"    # Ljava/lang/String;
    .param p4, "pp"    # Ljava/lang/String;
    .param p5, "ip"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean p1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    .line 70
    iput p2, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    .line 71
    iput-object p3, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    return-object v0
.end method

.method public getPassphrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    return v0
.end method

.method public isClient()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WifiDisplaySessionInfo: C/O:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 114
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Client"

    .line 113
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    const-string/jumbo v1, ",GId:"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    iget-object v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    const-string/jumbo v1, ",Pp:"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    iget-object v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    const-string/jumbo v1, ",SId:"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    iget v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string/jumbo v1, ",IP:"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    iget-object v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    const-string/jumbo v0, "Owner"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
