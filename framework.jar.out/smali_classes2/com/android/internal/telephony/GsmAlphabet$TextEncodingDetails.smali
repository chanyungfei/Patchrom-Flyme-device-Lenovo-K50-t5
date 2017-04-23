.class public Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmAlphabet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextEncodingDetails"
.end annotation


# instance fields
.field public codeUnitCount:I

.field public codeUnitSize:I

.field public codeUnitsRemaining:I

.field public languageShiftTable:I

.field public languageTable:I

.field public msgCount:I

.field public shiftLangId:I

.field public useLockingShift:Z

.field public useSingleShift:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    .line 122
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 83
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TextEncodingDetails { msgCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    iget v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    const-string/jumbo v1, ", codeUnitCount="

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    iget v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string/jumbo v1, ", codeUnitsRemaining="

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    iget v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    const-string/jumbo v1, ", codeUnitSize="

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    iget v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string/jumbo v1, ", languageTable="

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    iget v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string/jumbo v1, ", languageShiftTable="

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    iget v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string/jumbo v1, " }"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
