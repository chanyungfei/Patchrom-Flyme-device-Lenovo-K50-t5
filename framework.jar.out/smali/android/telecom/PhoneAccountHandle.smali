.class public final Landroid/telecom/PhoneAccountHandle;
.super Ljava/lang/Object;
.source "PhoneAccountHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/PhoneAccountHandle$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mId:Ljava/lang/String;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Landroid/telecom/PhoneAccountHandle$1;

    invoke-direct {v0}, Landroid/telecom/PhoneAccountHandle$1;-><init>()V

    sput-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    .line 59
    iput-object p2, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 164
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 166
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 164
    invoke-direct {p0, v0, v2, v1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 163
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    instance-of v0, p1, Landroid/telecom/PhoneAccountHandle;

    .line 127
    if-eqz v0, :cond_0

    move-object v0, p1

    .line 129
    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 129
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 127
    if-eqz v0, :cond_0

    move-object v0, p1

    .line 131
    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 127
    if-eqz v0, :cond_0

    .line 132
    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 127
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PhoneAccountHandle{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 116
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 117
    const-string/jumbo v2, ", "

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 118
    iget-object v2, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    invoke-static {v2}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    const-string/jumbo v2, ", "

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 120
    iget-object v2, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    const-string/jumbo v2, "}"

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 146
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 147
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 145
    return-void
.end method
