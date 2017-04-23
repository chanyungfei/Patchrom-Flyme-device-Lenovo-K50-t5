.class public abstract Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
.super Lcom/android/internal/telephony/SmsMessageBase$PduBase;
.source "SmsMessageBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsMessageBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DeliverPduBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase$PduBase;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeliverPdu: encodedScAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    const-string/jumbo v1, ", encodedMessage = "

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedMessage:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
