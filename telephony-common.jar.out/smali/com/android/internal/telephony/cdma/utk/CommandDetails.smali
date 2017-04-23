.class Lcom/android/internal/telephony/cdma/utk/CommandDetails;
.super Lcom/android/internal/telephony/cdma/utk/ValueObject;
.source "CommandDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/utk/CommandDetails$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public commandNumber:I

.field public commandQualifier:I

.field public compRequired:Z

.field public typeOfCommand:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/CommandDetails$1;-><init>()V

    .line 72
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ValueObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ValueObject;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->compRequired:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandNumber:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    .line 58
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)Z
    .locals 3
    .param p1, "other"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    .prologue
    const/4 v0, 0x0

    .line 52
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->compRequired:Z

    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->compRequired:Z

    if-ne v1, v2, :cond_0

    .line 53
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandNumber:I

    iget v2, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandNumber:I

    if-ne v1, v2, :cond_0

    .line 54
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    iget v2, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    if-ne v1, v2, :cond_0

    .line 55
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    iget v2, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 52
    :cond_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getTag()Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CmdDetails: compRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->compRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    const-string/jumbo v1, " commandNumber="

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandNumber:I

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string/jumbo v1, " typeOfCommand="

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    const-string/jumbo v1, " commandQualifier="

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->compRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
