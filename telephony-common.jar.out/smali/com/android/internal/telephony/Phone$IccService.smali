.class public final enum Lcom/android/internal/telephony/Phone$IccService;
.super Ljava/lang/Enum;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IccService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/Phone$IccService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Phone$IccService;

.field private static synthetic -com_android_internal_telephony_Phone$IccServiceSwitchesValues:[I

.field public static final enum CFIS:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum CHV1_DISABLE_FUNCTION:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum EPLMN:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum FDN:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum MWIS:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum OPL:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum PNN:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum SMSP:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum SPDI:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum SPN:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum UNSUPPORTED_SERVICE:Lcom/android/internal/telephony/Phone$IccService;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_Phone$IccServiceSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/Phone$IccService;->-com_android_internal_telephony_Phone$IccServiceSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Phone$IccService;->-com_android_internal_telephony_Phone$IccServiceSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/Phone$IccService;->values()[Lcom/android/internal/telephony/Phone$IccService;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->CFIS:Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$IccService;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->CHV1_DISABLE_FUNCTION:Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$IccService;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->EPLMN:Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$IccService;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->FDN:Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$IccService;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->MWIS:Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$IccService;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->OPL:Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$IccService;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->PNN:Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$IccService;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->SMSP:Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$IccService;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->SPDI:Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$IccService;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->SPN:Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$IccService;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->UNSUPPORTED_SERVICE:Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$IccService;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->-com_android_internal_telephony_Phone$IccServiceSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1

    :catch_a
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2344
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string/jumbo v1, "CHV1_DISABLE_FUNCTION"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->CHV1_DISABLE_FUNCTION:Lcom/android/internal/telephony/Phone$IccService;

    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string/jumbo v1, "SPN"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    .line 2345
    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->SPN:Lcom/android/internal/telephony/Phone$IccService;

    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string/jumbo v1, "PNN"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    .line 2346
    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->PNN:Lcom/android/internal/telephony/Phone$IccService;

    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string/jumbo v1, "OPL"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    .line 2347
    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->OPL:Lcom/android/internal/telephony/Phone$IccService;

    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string/jumbo v1, "MWIS"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    .line 2348
    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->MWIS:Lcom/android/internal/telephony/Phone$IccService;

    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string/jumbo v1, "CFIS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    .line 2349
    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->CFIS:Lcom/android/internal/telephony/Phone$IccService;

    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string/jumbo v1, "SPDI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    .line 2350
    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->SPDI:Lcom/android/internal/telephony/Phone$IccService;

    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string/jumbo v1, "EPLMN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    .line 2351
    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->EPLMN:Lcom/android/internal/telephony/Phone$IccService;

    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string/jumbo v1, "SMSP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    .line 2352
    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->SMSP:Lcom/android/internal/telephony/Phone$IccService;

    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string/jumbo v1, "FDN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    .line 2353
    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->FDN:Lcom/android/internal/telephony/Phone$IccService;

    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string/jumbo v1, "UNSUPPORTED_SERVICE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    .line 2354
    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->UNSUPPORTED_SERVICE:Lcom/android/internal/telephony/Phone$IccService;

    .line 2343
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/internal/telephony/Phone$IccService;

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->CHV1_DISABLE_FUNCTION:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->SPN:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->PNN:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->OPL:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->MWIS:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->CFIS:Lcom/android/internal/telephony/Phone$IccService;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->SPDI:Lcom/android/internal/telephony/Phone$IccService;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->EPLMN:Lcom/android/internal/telephony/Phone$IccService;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->SMSP:Lcom/android/internal/telephony/Phone$IccService;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->FDN:Lcom/android/internal/telephony/Phone$IccService;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->UNSUPPORTED_SERVICE:Lcom/android/internal/telephony/Phone$IccService;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->$VALUES:[Lcom/android/internal/telephony/Phone$IccService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 2343
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$IccService;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2343
    const-class v0, Lcom/android/internal/telephony/Phone$IccService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone$IccService;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/Phone$IccService;
    .locals 1

    .prologue
    .line 2343
    sget-object v0, Lcom/android/internal/telephony/Phone$IccService;->$VALUES:[Lcom/android/internal/telephony/Phone$IccService;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 3

    .prologue
    .line 2357
    const/4 v0, -0x1

    .line 2358
    .local v0, "nIndex":I
    invoke-static {}, Lcom/android/internal/telephony/Phone$IccService;->-getcom_android_internal_telephony_Phone$IccServiceSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$IccService;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2395
    :goto_0
    return v0

    .line 2360
    :pswitch_0
    const/4 v0, 0x0

    .line 2361
    goto :goto_0

    .line 2363
    :pswitch_1
    const/4 v0, 0x1

    .line 2364
    goto :goto_0

    .line 2366
    :pswitch_2
    const/4 v0, 0x2

    .line 2367
    goto :goto_0

    .line 2369
    :pswitch_3
    const/4 v0, 0x3

    .line 2370
    goto :goto_0

    .line 2372
    :pswitch_4
    const/4 v0, 0x4

    .line 2373
    goto :goto_0

    .line 2375
    :pswitch_5
    const/4 v0, 0x5

    .line 2376
    goto :goto_0

    .line 2378
    :pswitch_6
    const/4 v0, 0x6

    .line 2379
    goto :goto_0

    .line 2381
    :pswitch_7
    const/4 v0, 0x7

    .line 2382
    goto :goto_0

    .line 2384
    :pswitch_8
    const/16 v0, 0x8

    .line 2385
    goto :goto_0

    .line 2387
    :pswitch_9
    const/16 v0, 0x9

    .line 2388
    goto :goto_0

    .line 2390
    :pswitch_a
    const/16 v0, 0xa

    .line 2391
    goto :goto_0

    .line 2358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_6
        :pswitch_1
        :pswitch_a
    .end packed-switch
.end method
