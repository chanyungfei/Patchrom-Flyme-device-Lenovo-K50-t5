.class public final enum Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

.field public static final enum BOTH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

.field public static final enum DISABLED:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

.field public static final enum MANUAL_REFRESH_ONLY:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

.field public static PULL_DOWN_TO_REFRESH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

.field public static final enum PULL_FROM_END:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

.field public static final enum PULL_FROM_START:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

.field public static PULL_UP_TO_REFRESH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;


# instance fields
.field private mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1354
    new-instance v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v2, v2}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    .line 1357
    sput-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 1359
    new-instance v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    const-string/jumbo v1, "PULL_FROM_START"

    invoke-direct {v0, v1, v3, v3}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    .line 1364
    sput-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 1366
    new-instance v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    const-string/jumbo v1, "PULL_FROM_END"

    invoke-direct {v0, v1, v4, v4}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    .line 1371
    sput-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 1373
    new-instance v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    const-string/jumbo v1, "BOTH"

    invoke-direct {v0, v1, v5, v5}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    .line 1376
    sput-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 1378
    new-instance v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    const-string/jumbo v1, "MANUAL_REFRESH_ONLY"

    invoke-direct {v0, v1, v6, v6}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    .line 1383
    sput-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 1352
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->$VALUES:[Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 1388
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    sput-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 1393
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    sput-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 1352
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "modeInt"    # I

    .prologue
    .line 1421
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>.Mode;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1422
    iput p3, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->mIntValue:I

    .line 1421
    return-void
.end method

.method static getDefault()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 1415
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object v0
.end method

.method static mapIntToValue(I)Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 5
    .param p0, "modeInt"    # I

    .prologue
    .line 1404
    invoke-static {}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->values()[Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1405
    .local v0, "value":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;
    invoke-virtual {v0}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->getIntValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 1406
    return-object v0

    .line 1404
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1411
    .end local v0    # "value":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;
    :cond_1
    invoke-static {}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1352
    const-class v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 1352
    sget-object v0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->$VALUES:[Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object v0
.end method


# virtual methods
.method getIntValue()I
    .locals 1

    .prologue
    .line 1447
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>.Mode;"
    iget v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->mIntValue:I

    return v0
.end method

.method permitsPullToRefresh()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>.Mode;"
    const/4 v0, 0x0

    .line 1429
    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public showFooterLoadingLayout()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>.Mode;"
    const/4 v0, 0x1

    .line 1443
    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showHeaderLoadingLayout()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;, "Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase<TT;>.Mode;"
    const/4 v0, 0x1

    .line 1436
    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
