.class public Lcom/mediatek/internal/telephony/ppl/PplControlData;
.super Ljava/lang/Object;
.source "PplControlData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ppl/PplControlData$1;
    }
.end annotation


# static fields
.field private static final HEADER_SIZE:I = 0x30

.field public static final SALT_LIST_LENGTH:I = 0x28

.field public static final SALT_SIZE:I = 0x14

.field public static final SECRET_LIST_LENGTH:I = 0x28

.field public static final SECRET_SIZE:I = 0x14

.field public static final SIM_FINGERPRINT_LENGTH:I = 0x28

.field public static final STATUS_ENABLED:B = 0x2t

.field public static final STATUS_LOCKED:B = 0x4t

.field public static final STATUS_PROVISIONED:B = 0x1t

.field public static final STATUS_SIM_LOCKED:B = 0x8t

.field public static final STATUS_WIPE_REQUESTED:B = 0x10t

.field private static final TAG:Ljava/lang/String; = "PPL/ControlData"

.field public static final TRUSTED_NUMBER_LENGTH:I = 0x28

.field public static final VERSION:B = 0x1t

.field private static mSIMComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field public PendingMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;",
            ">;"
        }
    .end annotation
.end field

.field public SIMFingerprintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public TrustedNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public salt:[B

.field public secret:[B

.field public status:B

.field public version:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 328
    new-instance v0, Lcom/mediatek/internal/telephony/ppl/PplControlData$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ppl/PplControlData$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->mSIMComparator:Ljava/util/Comparator;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    .line 35
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 36
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    .line 37
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    .line 38
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 39
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 40
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 16
    return-void
.end method

.method public static buildControlData([B)Lcom/mediatek/internal/telephony/ppl/PplControlData;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 188
    new-instance v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;-><init>()V

    .line 189
    .local v0, "result":Lcom/mediatek/internal/telephony/ppl/PplControlData;
    if-eqz p0, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->decode([B)V

    .line 194
    :goto_0
    return-object v0

    .line 192
    :cond_0
    const-string/jumbo v1, "PPL/ControlData"

    const-string/jumbo v2, "buildControlData: data is empty, return empty instance"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static compareSIMFingerprints([B[B)I
    .locals 5
    .param p0, "lhs"    # [B
    .param p1, "rhs"    # [B

    .prologue
    const/4 v4, 0x0

    .line 316
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 317
    new-instance v2, Ljava/lang/Error;

    const-string/jumbo v3, "The two fingerprints must have the same length"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 320
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    sub-int v0, v2, v3

    .line 321
    .local v0, "difference":I
    if-eqz v0, :cond_1

    .line 322
    return v0

    .line 319
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "difference":I
    :cond_2
    return v4
.end method

.method private getDataSize()I
    .locals 2

    .prologue
    .line 167
    const/16 v0, 0x30

    .line 168
    .local v0, "result":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x28

    add-int/lit8 v0, v1, 0x30

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x28

    add-int/2addr v0, v1

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x31

    add-int/2addr v0, v1

    .line 177
    :cond_2
    return v0
.end method

.method public static sortSIMFingerprints([[B)[[B
    .locals 3
    .param p0, "input"    # [[B

    .prologue
    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    .line 308
    .local v1, "result":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 309
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, v1, v0

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    sget-object v2, Lcom/mediatek/internal/telephony/ppl/PplControlData;->mSIMComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 312
    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 237
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    .line 238
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 239
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    .line 240
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    .line 241
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 242
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 243
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 236
    return-void
.end method

.method public clone()Lcom/mediatek/internal/telephony/ppl/PplControlData;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 203
    new-instance v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/ppl/PplControlData;-><init>()V

    .line 204
    .local v3, "result":Lcom/mediatek/internal/telephony/ppl/PplControlData;
    iget-byte v6, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    iput-byte v6, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    .line 205
    iget-byte v6, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    iput-byte v6, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 206
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    iput-object v6, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    .line 207
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    iput-object v6, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    .line 208
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 209
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 211
    iget-object v7, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "i":I
    :cond_0
    iput-object v8, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 216
    :cond_1
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 218
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 219
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "s$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 220
    .local v4, "s":Ljava/lang/String;
    iget-object v6, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 223
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    :cond_2
    iput-object v8, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 225
    :cond_3
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    if-eqz v6, :cond_4

    .line 226
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 227
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pm$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    .line 228
    .local v1, "pm":Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;
    iget-object v6, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->clone()Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 231
    .end local v1    # "pm":Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;
    .end local v2    # "pm$iterator":Ljava/util/Iterator;
    :cond_4
    iput-object v8, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 233
    :cond_5
    return-object v3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->clone()Lcom/mediatek/internal/telephony/ppl/PplControlData;

    move-result-object v0

    return-object v0
.end method

.method public decode([B)V
    .locals 12
    .param p1, "data"    # [B

    .prologue
    const/16 v11, 0x28

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 115
    aget-byte v7, p1, v9

    iput-byte v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    .line 116
    const/4 v7, 0x1

    aget-byte v7, p1, v7

    iput-byte v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 117
    const/4 v7, 0x2

    aget-byte v4, p1, v7

    .line 118
    .local v4, "numberOfSIMFingerprint":B
    const/4 v7, 0x3

    aget-byte v5, p1, v7

    .line 119
    .local v5, "numberOfTrustedNumber":B
    const/4 v7, 0x4

    aget-byte v3, p1, v7

    .line 120
    .local v3, "numberOfPendingMessage":B
    const/16 v6, 0x8

    .line 121
    .local v6, "offset":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    array-length v8, v8

    invoke-static {p1, v6, v7, v9, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 122
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    array-length v7, v7

    add-int/lit8 v6, v7, 0x8

    .line 123
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    array-length v8, v8

    invoke-static {p1, v6, v7, v9, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 124
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    array-length v7, v7

    add-int/2addr v6, v7

    .line 125
    if-eqz v4, :cond_0

    .line 126
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 127
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 128
    new-array v0, v11, [B

    .line 129
    .local v0, "fingerprint":[B
    invoke-static {p1, v6, v0, v9, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 130
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v6, v6, 0x28

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "fingerprint":[B
    .end local v1    # "i":I
    :cond_0
    iput-object v10, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 136
    :cond_1
    if-eqz v5, :cond_4

    .line 137
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 138
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v5, :cond_5

    .line 139
    move v2, v6

    .line 140
    .local v2, "j":I
    :goto_2
    add-int/lit8 v7, v6, 0x28

    if-ge v2, v7, :cond_2

    .line 141
    aget-byte v7, p1, v2

    if-nez v7, :cond_3

    .line 145
    :cond_2
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    new-instance v8, Ljava/lang/String;

    sub-int v9, v2, v6

    invoke-direct {v8, p1, v6, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v6, v6, 0x28

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 149
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_4
    iput-object v10, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 151
    :cond_5
    if-eqz v3, :cond_6

    .line 152
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 153
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v3, :cond_7

    .line 154
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    new-instance v8, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    invoke-direct {v8, p1, v6}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;-><init>([BI)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v6, v6, 0x31

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 158
    .end local v1    # "i":I
    :cond_6
    iput-object v10, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 114
    :cond_7
    return-void
.end method

.method public encode()[B
    .locals 8

    .prologue
    const/16 v7, 0x28

    const/4 v5, 0x0

    .line 66
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->getDataSize()I

    move-result v4

    new-array v3, v4, [B

    .line 67
    .local v3, "result":[B
    iget-byte v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    aput-byte v4, v3, v5

    .line 68
    iget-byte v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    const/4 v6, 0x1

    aput-byte v4, v3, v6

    .line 69
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    if-nez v4, :cond_0

    move v4, v5

    :goto_0
    const/4 v6, 0x2

    aput-byte v4, v3, v6

    .line 70
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    if-nez v4, :cond_1

    move v4, v5

    :goto_1
    const/4 v6, 0x3

    aput-byte v4, v3, v6

    .line 71
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    if-nez v4, :cond_2

    move v4, v5

    :goto_2
    const/4 v6, 0x4

    aput-byte v4, v3, v6

    .line 72
    const/4 v4, 0x5

    aput-byte v5, v3, v4

    .line 73
    const/4 v4, 0x6

    aput-byte v5, v3, v4

    .line 74
    const/4 v4, 0x7

    aput-byte v5, v3, v4

    .line 75
    const/16 v2, 0x8

    .line 76
    .local v2, "offset":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    array-length v6, v6

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 77
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    array-length v4, v4

    add-int/lit8 v2, v4, 0x8

    .line 78
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    array-length v6, v6

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 79
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    array-length v4, v4

    add-int/2addr v2, v4

    .line 80
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 81
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 82
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 84
    add-int/lit8 v2, v2, 0x28

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 69
    .end local v1    # "i":I
    .end local v2    # "offset":I
    :cond_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-byte v4, v4

    goto :goto_0

    .line 70
    :cond_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-byte v4, v4

    goto :goto_1

    .line 71
    :cond_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-byte v4, v4

    goto :goto_2

    .line 87
    .restart local v2    # "offset":I
    :cond_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 88
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 89
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 90
    .local v0, "buffer":[B
    array-length v4, v0

    if-le v4, v7, :cond_4

    .line 91
    new-instance v4, Ljava/lang/Error;

    const-string/jumbo v5, "Trusted number is too long"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 93
    :cond_4
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 95
    invoke-static {v0, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 96
    add-int/lit8 v2, v2, 0x28

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 99
    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    :cond_5
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 100
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 101
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    invoke-virtual {v4, v3, v2}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->encode([BI)V

    .line 102
    add-int/lit8 v2, v2, 0x31

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 105
    .end local v1    # "i":I
    :cond_6
    return-object v3
.end method

.method public hasWipeFlag()Z
    .locals 2

    .prologue
    .line 259
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 247
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 2

    .prologue
    .line 283
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProvisioned()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 271
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSIMLocked()Z
    .locals 2

    .prologue
    .line 295
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 251
    if-eqz p1, :cond_0

    .line 252
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 250
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_0
.end method

.method public setLock(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 287
    if-eqz p1, :cond_0

    .line 288
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 286
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_0
.end method

.method public setProvision(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 275
    if-eqz p1, :cond_0

    .line 276
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 274
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_0
.end method

.method public setSIMLock(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 300
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 298
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x9

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_0
.end method

.method public setWipeFlag(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 263
    if-eqz p1, :cond_0

    .line 264
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 262
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PplControlData "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 340
    const-string/jumbo v2, " {"

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 341
    iget-byte v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 342
    const-string/jumbo v2, ", "

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 343
    iget-byte v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 344
    const-string/jumbo v2, ", "

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 345
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 346
    const-string/jumbo v2, ", "

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 347
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 348
    const-string/jumbo v2, ", "

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 349
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 350
    const-string/jumbo v2, "}"

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
