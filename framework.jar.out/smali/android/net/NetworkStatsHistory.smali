.class public Landroid/net/NetworkStatsHistory;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStatsHistory$Entry;,
        Landroid/net/NetworkStatsHistory$DataStreamUtils;,
        Landroid/net/NetworkStatsHistory$ParcelUtils;,
        Landroid/net/NetworkStatsHistory$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_ACTIVE_TIME:I = 0x1

.field public static final FIELD_ALL:I = -0x1

.field public static final FIELD_OPERATIONS:I = 0x20

.field public static final FIELD_RX_BYTES:I = 0x2

.field public static final FIELD_RX_PACKETS:I = 0x4

.field public static final FIELD_TX_BYTES:I = 0x8

.field public static final FIELD_TX_PACKETS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "NetworkStatsHistory"

.field private static final VERSION_ADD_ACTIVE:I = 0x3

.field private static final VERSION_ADD_PACKETS:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# instance fields
.field private activeTime:[J

.field private bucketCount:I

.field private bucketDuration:J

.field private bucketStart:[J

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private totalBytes:J

.field private txBytes:[J

.field private txPackets:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 664
    new-instance v0, Landroid/net/NetworkStatsHistory$1;

    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStatsHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 65
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "bucketDuration"    # J

    .prologue
    .line 106
    const/16 v0, 0xa

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 105
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "bucketDuration"    # J
    .param p3, "initialSize"    # I

    .prologue
    .line 110
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 109
    return-void
.end method

.method public constructor <init>(JII)V
    .locals 3
    .param p1, "bucketDuration"    # J
    .param p3, "initialSize"    # I
    .param p4, "fields"    # I

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-wide p1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 115
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 116
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 117
    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 118
    :cond_1
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_2

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 119
    :cond_2
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_3

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 120
    :cond_3
    and-int/lit8 v0, p4, 0x10

    if-eqz v0, :cond_4

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 121
    :cond_4
    and-int/lit8 v0, p4, 0x20

    if-eqz v0, :cond_5

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 122
    :cond_5
    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkStatsHistory;J)V
    .locals 2
    .param p1, "existing"    # Landroid/net/NetworkStatsHistory;
    .param p2, "bucketDuration"    # J

    .prologue
    .line 127
    invoke-virtual {p1, p2, p3}, Landroid/net/NetworkStatsHistory;->estimateResizeBuckets(J)I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 128
    invoke-virtual {p0, p1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 133
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 134
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 135
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 136
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 137
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 138
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 139
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 140
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 159
    .local v0, "version":I
    packed-switch v0, :pswitch_data_0

    .line 188
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :pswitch_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 162
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 163
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 164
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 165
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 166
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 167
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 168
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 169
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v2

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 192
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-eq v1, v2, :cond_2

    .line 195
    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "Mismatched history lengths"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :pswitch_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 175
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 176
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    :goto_1
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 178
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 179
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 180
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 181
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 182
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 183
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 184
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v2

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    goto :goto_0

    .line 177
    :cond_1
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    goto :goto_1

    .line 193
    :cond_2
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_0

    .line 194
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_0

    .line 157
    return-void

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static addLong([JIJ)V
    .locals 2
    .param p0, "array"    # [J
    .param p1, "i"    # I
    .param p2, "value"    # J

    .prologue
    .line 685
    if-eqz p0, :cond_0

    aget-wide v0, p0, p1

    add-long/2addr v0, p2

    aput-wide v0, p0, p1

    .line 684
    :cond_0
    return-void
.end method

.method private ensureBuckets(JJ)V
    .locals 9
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    const/4 v8, 0x0

    .line 412
    iget-wide v4, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long v4, p1, v4

    sub-long/2addr p1, v4

    .line 413
    iget-wide v4, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    iget-wide v6, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long v6, p3, v6

    sub-long/2addr v4, v6

    iget-wide v6, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long/2addr v4, v6

    add-long/2addr p3, v4

    .line 415
    move-wide v2, p1

    .local v2, "now":J
    :goto_0
    cmp-long v1, v2, p3

    if-gez v1, :cond_1

    .line 417
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v4, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v1, v8, v4, v2, v3}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 418
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 420
    not-int v1, v0

    invoke-direct {p0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->insertBucket(IJ)V

    .line 415
    :cond_0
    iget-wide v4, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v2, v4

    goto :goto_0

    .line 410
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method private static getLong([JIJ)J
    .locals 0
    .param p0, "array"    # [J
    .param p1, "i"    # I
    .param p2, "value"    # J

    .prologue
    .line 677
    if-eqz p0, :cond_0

    aget-wide p2, p0, p1

    .end local p2    # "value":J
    :cond_0
    return-wide p2
.end method

.method private insertBucket(IJ)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "start"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 430
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v4, v4

    if-lt v3, v4, :cond_5

    .line 431
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v3, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v2, v3, 0x2

    .line 432
    .local v2, "newLength":I
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 433
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 434
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 435
    :cond_1
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 436
    :cond_2
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 437
    :cond_3
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 438
    :cond_4
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 442
    .end local v2    # "newLength":I
    :cond_5
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge p1, v3, :cond_b

    .line 443
    add-int/lit8 v0, p1, 0x1

    .line 444
    .local v0, "dstPos":I
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    sub-int v1, v3, p1

    .line 446
    .local v1, "length":I
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 447
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 448
    :cond_6
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 449
    :cond_7
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 450
    :cond_8
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 451
    :cond_9
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 452
    :cond_a
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 455
    .end local v0    # "dstPos":I
    .end local v1    # "length":I
    :cond_b
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aput-wide p2, v3, p1

    .line 456
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 457
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 458
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 459
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 460
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 461
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 462
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 428
    return-void
.end method

.method public static randomLong(Ljava/util/Random;JJ)J
    .locals 5
    .param p0, "r"    # Ljava/util/Random;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 601
    long-to-float v0, p1

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-long v2, p3, p1

    long-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private static setLong([JIJ)V
    .locals 0
    .param p0, "array"    # [J
    .param p1, "i"    # I
    .param p2, "value"    # J

    .prologue
    .line 681
    if-eqz p0, :cond_0

    aput-wide p2, p0, p1

    .line 680
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "fullHistory"    # Z

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v4, 0x0

    .line 618
    const-string/jumbo v2, "NetworkStatsHistory: bucketDuration="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 619
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v2, v6

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 620
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 622
    if-eqz p2, :cond_6

    const/4 v1, 0x0

    .line 623
    .local v1, "start":I
    :goto_0
    if-lez v1, :cond_0

    .line 624
    const-string/jumbo v2, "(omitting "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string/jumbo v2, " buckets)"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 627
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_1
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v2, :cond_7

    .line 628
    const-string/jumbo v2, "st="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v2, v0

    div-long/2addr v2, v6

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 629
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v2, :cond_1

    const-string/jumbo v2, " rb="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 630
    :cond_1
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v2, :cond_2

    const-string/jumbo v2, " rp="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 631
    :cond_2
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v2, :cond_3

    const-string/jumbo v2, " tb="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 632
    :cond_3
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v2, :cond_4

    const-string/jumbo v2, " tp="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 633
    :cond_4
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v2, :cond_5

    const-string/jumbo v2, " op="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 634
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 622
    .end local v0    # "i":I
    .end local v1    # "start":I
    :cond_6
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v2, v2, -0x20

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .restart local v1    # "start":I
    goto/16 :goto_0

    .line 637
    .restart local v0    # "i":I
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 617
    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const-wide/16 v6, 0x3e8

    const/16 v4, 0x2c

    .line 641
    const-string/jumbo v1, "d,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 642
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v2, v6

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 643
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 645
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v1, :cond_5

    .line 646
    const-string/jumbo v1, "b,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 647
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v1, v0

    div-long/2addr v2, v6

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 648
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 649
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    :goto_2
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 650
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    :goto_3
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 651
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    :goto_4
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 652
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 653
    :goto_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 648
    :cond_0
    const-string/jumbo v1, "*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 649
    :cond_1
    const-string/jumbo v1, "*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 650
    :cond_2
    const-string/jumbo v1, "*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 651
    :cond_3
    const-string/jumbo v1, "*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 652
    :cond_4
    const-string/jumbo v1, "*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    .line 640
    :cond_5
    return-void
.end method

.method public estimateResizeBuckets(J)I
    .locals 5
    .param p1, "newBucketDuration"    # J

    .prologue
    .line 689
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    mul-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method public generateRandom(JJJ)V
    .locals 19
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "bytes"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 556
    new-instance v18, Ljava/util/Random;

    invoke-direct/range {v18 .. v18}, Ljava/util/Random;-><init>()V

    .line 558
    .local v18, "r":Ljava/util/Random;
    invoke-virtual/range {v18 .. v18}, Ljava/util/Random;->nextFloat()F

    move-result v2

    .line 559
    .local v2, "fractionRx":F
    move-wide/from16 v0, p5

    long-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-long v8, v3

    .line 560
    .local v8, "rxBytes":J
    move-wide/from16 v0, p5

    long-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v2

    mul-float/2addr v3, v4

    float-to-long v12, v3

    .line 562
    .local v12, "txBytes":J
    const-wide/16 v4, 0x400

    div-long v10, v8, v4

    .line 563
    .local v10, "rxPackets":J
    const-wide/16 v4, 0x400

    div-long v14, v12, v4

    .line 564
    .local v14, "txPackets":J
    const-wide/16 v4, 0x800

    div-long v16, v8, v4

    .local v16, "operations":J
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    .line 566
    invoke-virtual/range {v3 .. v18}, Landroid/net/NetworkStatsHistory;->generateRandom(JJJJJJJLjava/util/Random;)V

    .line 555
    return-void
.end method

.method public generateRandom(JJJJJJJLjava/util/Random;)V
    .locals 23
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J
    .param p15, "r"    # Ljava/util/Random;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 575
    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    .line 577
    new-instance v7, Landroid/net/NetworkStats$Entry;

    .line 578
    sget-object v8, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    .line 577
    invoke-direct/range {v7 .. v21}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 579
    .local v7, "entry":Landroid/net/NetworkStats$Entry;
    :goto_0
    const-wide/16 v8, 0x400

    cmp-long v6, p5, v8

    if-gtz v6, :cond_0

    const-wide/16 v8, 0x80

    cmp-long v6, p7, v8

    if-lez v6, :cond_1

    .line 581
    :cond_0
    move-object/from16 v0, p15

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v10

    .line 582
    .local v10, "curStart":J
    const-wide/16 v8, 0x0

    sub-long v14, p3, v10

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    move-object/from16 v0, p15

    invoke-static {v0, v8, v9, v14, v15}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v8

    add-long v12, v10, v8

    .line 584
    .local v12, "curEnd":J
    const-wide/16 v8, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p5

    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 585
    const-wide/16 v8, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p7

    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 586
    const-wide/16 v8, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p9

    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 587
    const-wide/16 v8, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p11

    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 588
    const-wide/16 v8, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p13

    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->operations:J

    .line 590
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    sub-long p5, p5, v8

    .line 591
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long p7, p7, v8

    .line 592
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long p9, p9, v8

    .line 593
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long p11, p11, v8

    .line 594
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->operations:J

    sub-long p13, p13, v8

    move-object/from16 v9, p0

    move-object v14, v7

    .line 596
    invoke-virtual/range {v9 .. v14}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_0

    .line 579
    .end local v10    # "curStart":J
    .end local v12    # "curEnd":J
    :cond_1
    const-wide/16 v8, 0x400

    cmp-long v6, p9, v8

    if-gtz v6, :cond_0

    const-wide/16 v8, 0x80

    cmp-long v6, p11, v8

    if-gtz v6, :cond_0

    .line 580
    const-wide/16 v8, 0x20

    cmp-long v6, p13, v8

    if-gtz v6, :cond_0

    .line 574
    return-void
.end method

.method public getBucketDuration()J
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    return-wide v0
.end method

.method public getEnd()J
    .locals 4

    .prologue
    .line 233
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_0

    .line 234
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v0, v2

    return-wide v0

    .line 236
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getIndexAfter(J)I
    .locals 5
    .param p1, "time"    # J

    .prologue
    const/4 v3, 0x0

    .line 266
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v1, v3, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 267
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 268
    not-int v0, v0

    .line 272
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1

    .line 270
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndexBefore(J)I
    .locals 5
    .param p1, "time"    # J

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v1, v3, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 253
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 254
    not-int v1, v0

    add-int/lit8 v0, v1, -0x1

    .line 258
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1

    .line 256
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getStart()J
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_0

    .line 226
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v0, v0, v1

    return-wide v0

    .line 228
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-wide v0
.end method

.method public getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 6
    .param p1, "i"    # I
    .param p2, "recycle"    # Landroid/net/NetworkStatsHistory$Entry;

    .prologue
    const-wide/16 v4, -0x1

    .line 279
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 280
    .local v0, "entry":Landroid/net/NetworkStatsHistory$Entry;
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 281
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 282
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 283
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 284
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 285
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 286
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 287
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 288
    return-object v0

    .line 279
    .end local v0    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_0
    new-instance v0, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    .restart local v0    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    goto :goto_0
.end method

.method public getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 25
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "now"    # J
    .param p7, "recycle"    # Landroid/net/NetworkStatsHistory$Entry;

    .prologue
    .line 508
    if-eqz p7, :cond_1

    move-object/from16 v5, p7

    .line 509
    .local v5, "entry":Landroid/net/NetworkStatsHistory$Entry;
    :goto_0
    sub-long v18, p3, p1

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 510
    move-wide/from16 v0, p1

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    const-wide/16 v18, 0x0

    :goto_1
    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    const-wide/16 v18, 0x0

    :goto_2
    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    const-wide/16 v18, 0x0

    :goto_3
    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    const-wide/16 v18, 0x0

    :goto_4
    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    const-wide/16 v18, 0x0

    :goto_5
    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    const-wide/16 v18, 0x0

    :goto_6
    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 518
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v11

    .line 519
    .local v11, "startIndex":I
    move v10, v11

    .local v10, "i":I
    :goto_7
    if-ltz v10, :cond_0

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    move-object/from16 v18, v0

    aget-wide v8, v18, v10

    .line 521
    .local v8, "curStart":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v18, v0

    add-long v6, v8, v18

    .line 524
    .local v6, "curEnd":J
    cmp-long v18, v6, p1

    if-gtz v18, :cond_8

    .line 548
    .end local v6    # "curEnd":J
    .end local v8    # "curStart":J
    :cond_0
    return-object v5

    .line 508
    .end local v5    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v10    # "i":I
    .end local v11    # "startIndex":I
    :cond_1
    new-instance v5, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    .restart local v5    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    goto/16 :goto_0

    .line 511
    :cond_2
    const-wide/16 v18, -0x1

    goto :goto_1

    .line 512
    :cond_3
    const-wide/16 v18, -0x1

    goto :goto_2

    .line 513
    :cond_4
    const-wide/16 v18, -0x1

    goto :goto_3

    .line 514
    :cond_5
    const-wide/16 v18, -0x1

    goto :goto_4

    .line 515
    :cond_6
    const-wide/16 v18, -0x1

    goto :goto_5

    .line 516
    :cond_7
    const-wide/16 v18, -0x1

    goto :goto_6

    .line 526
    .restart local v6    # "curEnd":J
    .restart local v8    # "curStart":J
    .restart local v10    # "i":I
    .restart local v11    # "startIndex":I
    :cond_8
    cmp-long v18, v8, p3

    if-ltz v18, :cond_a

    .line 519
    :cond_9
    :goto_8
    add-int/lit8 v10, v10, -0x1

    goto :goto_7

    .line 529
    :cond_a
    cmp-long v18, v8, p5

    if-gez v18, :cond_10

    cmp-long v18, v6, p5

    if-lez v18, :cond_10

    const/4 v4, 0x1

    .line 531
    .local v4, "activeBucket":Z
    :goto_9
    if-eqz v4, :cond_11

    .line 532
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 538
    .local v12, "overlap":J
    :goto_a
    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-lez v18, :cond_9

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v10

    mul-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 542
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v10

    mul-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 543
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v10

    mul-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 544
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v10

    mul-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 545
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v10

    mul-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 546
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v10

    mul-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    goto/16 :goto_8

    .line 529
    .end local v4    # "activeBucket":Z
    .end local v12    # "overlap":J
    :cond_10
    const/4 v4, 0x0

    .restart local v4    # "activeBucket":Z
    goto/16 :goto_9

    .line 534
    :cond_11
    cmp-long v18, v6, p3

    if-gez v18, :cond_12

    move-wide v14, v6

    .line 535
    .local v14, "overlapEnd":J
    :goto_b
    cmp-long v18, v8, p1

    if-lez v18, :cond_13

    move-wide/from16 v16, v8

    .line 536
    .local v16, "overlapStart":J
    :goto_c
    sub-long v12, v14, v16

    .restart local v12    # "overlap":J
    goto/16 :goto_a

    .line 534
    .end local v12    # "overlap":J
    .end local v14    # "overlapEnd":J
    .end local v16    # "overlapStart":J
    :cond_12
    move-wide/from16 v14, p3

    .restart local v14    # "overlapEnd":J
    goto :goto_b

    .line 535
    :cond_13
    move-wide/from16 v16, p1

    .restart local v16    # "overlapStart":J
    goto :goto_c
.end method

.method public getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 9
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "recycle"    # Landroid/net/NetworkStatsHistory$Entry;

    .prologue
    .line 500
    const-wide v6, 0x7fffffffffffffffL

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    return-object v0
.end method

.method public intersects(JJ)Z
    .locals 7
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    const/4 v5, 0x1

    .line 608
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v2

    .line 609
    .local v2, "dataStart":J
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v0

    .line 610
    .local v0, "dataEnd":J
    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    cmp-long v4, p1, v0

    if-gtz v4, :cond_0

    return v5

    .line 611
    :cond_0
    cmp-long v4, p3, v2

    if-ltz v4, :cond_1

    cmp-long v4, p3, v0

    if-gtz v4, :cond_1

    return v5

    .line 612
    :cond_1
    cmp-long v4, v2, p1

    if-ltz v4, :cond_2

    cmp-long v4, v2, p3

    if-gtz v4, :cond_2

    return v5

    .line 613
    :cond_2
    cmp-long v4, v0, p1

    if-ltz v4, :cond_3

    cmp-long v4, v0, p3

    if-gtz v4, :cond_3

    return v5

    .line 614
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method public recordData(JJJJ)V
    .locals 17
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "rxBytes"    # J
    .param p7, "txBytes"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 297
    new-instance v1, Landroid/net/NetworkStats$Entry;

    .line 298
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-wide/from16 v6, p5

    move-wide/from16 v10, p7

    .line 297
    invoke-direct/range {v1 .. v15}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 296
    return-void
.end method

.method public recordData(JJLandroid/net/NetworkStats$Entry;)V
    .locals 43
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 306
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v26, v0

    .line 307
    .local v26, "rxBytes":J
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v28, v0

    .line 308
    .local v28, "rxPackets":J
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v32, v0

    .line 309
    .local v32, "txBytes":J
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v34, v0

    .line 310
    .local v34, "txPackets":J
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->operations:J

    move-wide/from16 v22, v0

    .line 312
    .local v22, "operations":J
    invoke-virtual/range {p5 .. p5}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 313
    new-instance v31, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v36, "tried recording negative data"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 315
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 316
    return-void

    .line 320
    :cond_1
    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    .line 323
    sub-long v8, p3, p1

    .line 324
    .local v8, "duration":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v30

    .line 325
    .local v30, "startIndex":I
    move/from16 v20, v30

    .local v20, "i":I
    :goto_0
    if-ltz v20, :cond_2

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    move-object/from16 v31, v0

    aget-wide v6, v31, v20

    .line 327
    .local v6, "curStart":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    move-object/from16 v31, v0

    aget-wide v36, v31, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v38, v0

    add-long v4, v36, v38

    .line 330
    .local v4, "curEnd":J
    cmp-long v31, v4, p1

    if-gez v31, :cond_3

    .line 371
    .end local v4    # "curEnd":J
    .end local v6    # "curStart":J
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    move-wide/from16 v36, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v40, v0

    add-long v38, v38, v40

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 305
    return-void

    .line 332
    .restart local v4    # "curEnd":J
    .restart local v6    # "curStart":J
    :cond_3
    cmp-long v31, v6, p3

    if-lez v31, :cond_5

    .line 325
    :cond_4
    :goto_1
    add-int/lit8 v20, v20, -0x1

    goto :goto_0

    .line 334
    :cond_5
    move-wide/from16 v0, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v36

    move-wide/from16 v0, p1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v38

    sub-long v24, v36, v38

    .line 335
    .local v24, "overlap":J
    const-wide/16 v36, 0x0

    cmp-long v31, v24, v36

    if-lez v31, :cond_4

    .line 338
    const-wide/16 v36, 0x0

    cmp-long v31, v8, v36

    if-gtz v31, :cond_6

    .line 340
    const-string/jumbo v31, "NetworkStatsHistory"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "recordData error i="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " duration="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " start="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 341
    const-string/jumbo v37, " end="

    .line 340
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 341
    const-string/jumbo v37, " overlap="

    .line 340
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 341
    const-string/jumbo v37, " curEnd="

    .line 340
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 342
    const-string/jumbo v37, " curStart="

    .line 340
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 342
    const-string/jumbo v37, " bucketDuration="

    .line 340
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 342
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v38, v0

    .line 340
    move-object/from16 v0, v36

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string/jumbo v31, "NetworkStatsHistory"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "bucket bucketCount="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 345
    const-string/jumbo v37, " startIndex="

    .line 344
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 345
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v37

    .line 344
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v21

    .local v21, "k":I
    :goto_2
    if-ltz v21, :cond_2

    .line 347
    const-string/jumbo v31, "NetworkStatsHistory"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "bucket bucketStart["

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "]="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    move-object/from16 v37, v0

    aget-wide v38, v37, v21

    move-object/from16 v0, v36

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    add-int/lit8 v21, v21, -0x1

    goto :goto_2

    .line 355
    .end local v21    # "k":I
    :cond_6
    mul-long v36, v26, v24

    div-long v12, v36, v8

    .line 356
    .local v12, "fracRxBytes":J
    mul-long v36, v28, v24

    div-long v14, v36, v8

    .line 357
    .local v14, "fracRxPackets":J
    mul-long v36, v32, v24

    div-long v16, v36, v8

    .line 358
    .local v16, "fracTxBytes":J
    mul-long v36, v34, v24

    div-long v18, v36, v8

    .line 359
    .local v18, "fracTxPackets":J
    mul-long v36, v22, v24

    div-long v10, v36, v8

    .line 361
    .local v10, "fracOperations":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v20

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-static {v0, v1, v12, v13}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v26, v26, v12

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-static {v0, v1, v14, v15}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v28, v28, v14

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v20

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v32, v32, v16

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v34, v34, v18

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-static {v0, v1, v10, v11}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v22, v22, v10

    .line 368
    sub-long v8, v8, v24

    goto/16 :goto_1
.end method

.method public recordEntireHistory(Landroid/net/NetworkStatsHistory;)V
    .locals 6
    .param p1, "input"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 379
    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 378
    return-void
.end method

.method public recordHistory(Landroid/net/NetworkStatsHistory;JJ)V
    .locals 18
    .param p1, "input"    # Landroid/net/NetworkStatsHistory;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 388
    new-instance v3, Landroid/net/NetworkStats$Entry;

    .line 389
    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    .line 388
    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 390
    .local v3, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v2, v4, :cond_2

    .line 391
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v6, v4, v2

    .line 392
    .local v6, "bucketStart":J
    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long v8, v6, v4

    .line 395
    .local v8, "bucketEnd":J
    cmp-long v4, v6, p2

    if-ltz v4, :cond_0

    cmp-long v4, v8, p4

    if-lez v4, :cond_1

    .line 390
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    const-wide/16 v10, 0x0

    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 398
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    const-wide/16 v10, 0x0

    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 399
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    const-wide/16 v10, 0x0

    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 400
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    const-wide/16 v10, 0x0

    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 401
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    const-wide/16 v10, 0x0

    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->operations:J

    move-object/from16 v5, p0

    move-object v10, v3

    .line 403
    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_1

    .line 387
    .end local v6    # "bucketStart":J
    .end local v8    # "bucketEnd":J
    :cond_2
    return-void
.end method

.method public removeBucketsBefore(J)V
    .locals 9
    .param p1, "cutoff"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 471
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v6, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v4, v6, :cond_0

    .line 472
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v6, v4

    .line 473
    .local v2, "curStart":J
    iget-wide v6, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long v0, v2, v6

    .line 477
    .local v0, "curEnd":J
    cmp-long v6, v0, p1

    if-lez v6, :cond_8

    .line 480
    .end local v0    # "curEnd":J
    .end local v2    # "curStart":J
    :cond_0
    if-lez v4, :cond_7

    .line 481
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v5, v6

    .line 482
    .local v5, "length":I
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 483
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 484
    :cond_1
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 485
    :cond_2
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 486
    :cond_3
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 487
    :cond_4
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 488
    :cond_5
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 489
    :cond_6
    iget v6, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    sub-int/2addr v6, v4

    iput v6, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 469
    .end local v5    # "length":I
    :cond_7
    return-void

    .line 471
    .restart local v0    # "curEnd":J
    .restart local v2    # "curStart":J
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 659
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 660
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "  "

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 661
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 146
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 148
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 149
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 150
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 151
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 152
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 153
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 154
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    return-void
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 201
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 202
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 203
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 204
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 205
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 206
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 207
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 208
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 199
    return-void
.end method
