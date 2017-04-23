.class Lcom/android/internal/telephony/cat/ReceiveDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "BipCommandParams.java"


# instance fields
.field channelDataLength:I

.field mReceiveDataCid:I

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;IILcom/android/internal/telephony/cat/TextMessage;)V
    .locals 2
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "length"    # I
    .param p3, "cid"    # I
    .param p4, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 84
    iput v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->channelDataLength:I

    .line 85
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 86
    iput v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mReceiveDataCid:I

    .line 90
    iput p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->channelDataLength:I

    .line 91
    iput-object p4, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 92
    iput p3, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mReceiveDataCid:I

    .line 88
    return-void
.end method
