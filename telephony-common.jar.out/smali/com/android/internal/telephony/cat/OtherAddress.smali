.class public Lcom/android/internal/telephony/cat/OtherAddress;
.super Ljava/lang/Object;
.source "OtherAddress.java"


# instance fields
.field public address:Ljava/net/InetAddress;

.field public addressType:I

.field public rawAddress:[B


# direct methods
.method public constructor <init>(I[BI)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "rawData"    # [B
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/cat/OtherAddress;->addressType:I

    .line 62
    iput-object v4, p0, Lcom/android/internal/telephony/cat/OtherAddress;->rawAddress:[B

    .line 63
    iput-object v4, p0, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    .line 67
    :try_start_0
    iput p1, p0, Lcom/android/internal/telephony/cat/OtherAddress;->addressType:I

    .line 68
    iget v1, p0, Lcom/android/internal/telephony/cat/OtherAddress;->addressType:I

    const/16 v2, 0x21

    if-ne v2, v1, :cond_1

    .line 69
    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cat/OtherAddress;->rawAddress:[B

    .line 70
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OtherAddress;->rawAddress:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cat/OtherAddress;->rawAddress:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {p2, p3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 71
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OtherAddress;->rawAddress:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cat/OtherAddress;->addressType:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x57

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "OtherAddress: out of bounds"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iput-object v4, p0, Lcom/android/internal/telephony/cat/OtherAddress;->rawAddress:[B

    .line 80
    iput-object v4, p0, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    goto :goto_0
.end method
