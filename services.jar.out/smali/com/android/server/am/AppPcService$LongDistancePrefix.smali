.class Lcom/android/server/am/AppPcService$LongDistancePrefix;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongDistancePrefix"
.end annotation


# static fields
.field private static final CMCC_PREFIX:[Ljava/lang/String;

.field private static final TELECOM_PREFIX:[Ljava/lang/String;

.field private static final UNICON_PREFIX:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1177
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "12593"

    aput-object v1, v0, v3

    const-string/jumbo v1, "17951"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/am/AppPcService$LongDistancePrefix;->CMCC_PREFIX:[Ljava/lang/String;

    const/4 v0, 0x5

    .line 1179
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "96218"

    aput-object v1, v0, v3

    const-string/jumbo v1, "10193"

    aput-object v1, v0, v4

    const-string/jumbo v1, "17901"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "17911"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "17960"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/AppPcService$LongDistancePrefix;->UNICON_PREFIX:[Ljava/lang/String;

    .line 1181
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "11808"

    aput-object v1, v0, v3

    const-string/jumbo v1, "17909"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/am/AppPcService$LongDistancePrefix;->TELECOM_PREFIX:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static queryLongDistacePrefix(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1184
    sget-object v2, Lcom/android/server/am/AppPcService$LongDistancePrefix;->CMCC_PREFIX:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    .line 1189
    sget-object v2, Lcom/android/server/am/AppPcService$LongDistancePrefix;->UNICON_PREFIX:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_2

    .line 1194
    sget-object v2, Lcom/android/server/am/AppPcService$LongDistancePrefix;->TELECOM_PREFIX:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_2
    if-lt v0, v3, :cond_4

    .line 1199
    return v1

    .line 1184
    :cond_0
    aget-object v4, v2, v0

    .line 1185
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1186
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 1189
    :cond_2
    aget-object v4, v2, v0

    .line 1190
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1191
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 1194
    :cond_4
    aget-object v4, v2, v0

    .line 1195
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1194
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1196
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method
