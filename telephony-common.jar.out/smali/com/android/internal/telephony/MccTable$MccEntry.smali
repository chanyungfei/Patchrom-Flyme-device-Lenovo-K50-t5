.class Lcom/android/internal/telephony/MccTable$MccEntry;
.super Ljava/lang/Object;
.source "MccTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MccTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MccEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/telephony/MccTable$MccEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final mIso:Ljava/lang/String;

.field mLanguage:Ljava/lang/String;

.field final mMcc:I

.field final mSmallestDigitsMnc:I


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "mnc"    # I
    .param p2, "iso"    # Ljava/lang/String;
    .param p3, "smallestDigitsMCC"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 70
    return-void
.end method

.method constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "mnc"    # I
    .param p2, "iso"    # Ljava/lang/String;
    .param p3, "smallestDigitsMCC"    # I
    .param p4, "language"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-nez p2, :cond_0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 80
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mMcc:I

    .line 81
    iput-object p2, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mIso:Ljava/lang/String;

    .line 82
    iput p3, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mSmallestDigitsMnc:I

    .line 84
    iput-object p4, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mLanguage:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/MccTable$MccEntry;)I
    .locals 2
    .param p1, "o"    # Lcom/android/internal/telephony/MccTable$MccEntry;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mMcc:I

    iget v1, p1, Lcom/android/internal/telephony/MccTable$MccEntry;->mMcc:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p1, Lcom/android/internal/telephony/MccTable$MccEntry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MccTable$MccEntry;->compareTo(Lcom/android/internal/telephony/MccTable$MccEntry;)I

    move-result v0

    return v0
.end method
