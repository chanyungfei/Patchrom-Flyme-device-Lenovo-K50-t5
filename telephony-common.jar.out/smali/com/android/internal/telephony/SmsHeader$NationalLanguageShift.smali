.class public Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NationalLanguageShift"
.end annotation


# instance fields
.field public lockingShiftId:I

.field public singleShiftId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput v0, p0, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;->singleShiftId:I

    .line 108
    iput v0, p0, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;->lockingShiftId:I

    .line 106
    return-void
.end method
