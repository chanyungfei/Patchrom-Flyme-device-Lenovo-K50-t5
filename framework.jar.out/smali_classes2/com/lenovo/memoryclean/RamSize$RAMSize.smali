.class final enum Lcom/lenovo/memoryclean/RamSize$RAMSize;
.super Ljava/lang/Enum;
.source "RamSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/memoryclean/RamSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RAMSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/memoryclean/RamSize$RAMSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/memoryclean/RamSize$RAMSize;

.field public static final enum SIZE_0G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

.field public static final enum SIZE_0_5G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

.field public static final enum SIZE_1G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

.field public static final enum SIZE_1_5G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

.field public static final enum SIZE_2G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

.field public static final enum SIZE_3G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

.field public static final enum SIZE_4G:Lcom/lenovo/memoryclean/RamSize$RAMSize;


# instance fields
.field max:J

.field min:J

.field size:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    const v4, 0x3ecccccd    # 0.4f

    .line 19
    new-instance v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;

    const-string/jumbo v1, "SIZE_0G"

    invoke-direct {v0, v1, v6, v2, v2}, Lcom/lenovo/memoryclean/RamSize$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;->SIZE_0G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

    .line 20
    new-instance v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;

    const-string/jumbo v1, "SIZE_0_5G"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/lenovo/memoryclean/RamSize$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;->SIZE_0_5G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

    .line 21
    new-instance v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;

    const-string/jumbo v1, "SIZE_1G"

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/memoryclean/RamSize$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;->SIZE_1G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

    .line 22
    new-instance v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;

    const-string/jumbo v1, "SIZE_1_5G"

    const/4 v2, 0x3

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/memoryclean/RamSize$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;->SIZE_1_5G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

    .line 23
    new-instance v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;

    const-string/jumbo v1, "SIZE_2G"

    const/4 v2, 0x4

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/memoryclean/RamSize$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;->SIZE_2G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

    .line 24
    new-instance v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;

    const-string/jumbo v1, "SIZE_3G"

    const/4 v2, 0x5

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/lenovo/memoryclean/RamSize$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;->SIZE_3G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

    .line 25
    new-instance v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;

    const-string/jumbo v1, "SIZE_4G"

    const/4 v2, 0x6

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/lenovo/memoryclean/RamSize$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;->SIZE_4G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

    const/4 v0, 0x7

    .line 18
    new-array v0, v0, [Lcom/lenovo/memoryclean/RamSize$RAMSize;

    sget-object v1, Lcom/lenovo/memoryclean/RamSize$RAMSize;->SIZE_0G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/memoryclean/RamSize$RAMSize;->SIZE_0_5G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

    aput-object v1, v0, v7

    const/4 v1, 0x2

    sget-object v2, Lcom/lenovo/memoryclean/RamSize$RAMSize;->SIZE_1G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/lenovo/memoryclean/RamSize$RAMSize;->SIZE_1_5G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/lenovo/memoryclean/RamSize$RAMSize;->SIZE_2G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/memoryclean/RamSize$RAMSize;->SIZE_3G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/memoryclean/RamSize$RAMSize;->SIZE_4G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;->$VALUES:[Lcom/lenovo/memoryclean/RamSize$RAMSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFF)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x400

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    float-to-long v0, p3

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/memoryclean/RamSize$RAMSize;->size:J

    .line 33
    sub-float v0, p3, p4

    float-to-long v0, v0

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/memoryclean/RamSize$RAMSize;->min:J

    .line 34
    float-to-long v0, p3

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/memoryclean/RamSize$RAMSize;->max:J

    .line 35
    return-void
.end method

.method static getTotalRAMbySize(J)Lcom/lenovo/memoryclean/RamSize$RAMSize;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-static {}, Lcom/lenovo/memoryclean/RamSize$RAMSize;->values()[Lcom/lenovo/memoryclean/RamSize$RAMSize;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_0

    .line 43
    sget-object v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;->SIZE_0G:Lcom/lenovo/memoryclean/RamSize$RAMSize;

    return-object v0

    .line 38
    :cond_0
    aget-object v6, v4, v3

    .line 39
    iget-wide v8, v6, Lcom/lenovo/memoryclean/RamSize$RAMSize;->min:J

    cmp-long v0, p0, v8

    if-gtz v0, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    iget-wide v8, v6, Lcom/lenovo/memoryclean/RamSize$RAMSize;->max:J

    cmp-long v0, p0, v8

    if-ltz v0, :cond_2

    move v0, v1

    :goto_2
    if-nez v0, :cond_3

    .line 40
    return-object v6

    :cond_1
    move v0, v2

    .line 39
    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    .line 38
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/memoryclean/RamSize$RAMSize;
    .locals 1

    .prologue
    const-class v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;

    .line 18
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/memoryclean/RamSize$RAMSize;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/lenovo/memoryclean/RamSize$RAMSize;->$VALUES:[Lcom/lenovo/memoryclean/RamSize$RAMSize;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/memoryclean/RamSize$RAMSize;

    return-object v0
.end method
