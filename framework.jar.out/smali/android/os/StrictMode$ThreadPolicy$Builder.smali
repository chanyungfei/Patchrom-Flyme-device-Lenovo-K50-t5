.class public final Landroid/os/StrictMode$ThreadPolicy$Builder;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode$ThreadPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mMask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    .line 414
    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    .line 413
    return-void
.end method

.method public constructor <init>(Landroid/os/StrictMode$ThreadPolicy;)V
    .locals 1
    .param p1, "policy"    # Landroid/os/StrictMode$ThreadPolicy;

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    .line 421
    iget v0, p1, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    .line 420
    return-void
.end method

.method private disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 2
    .param p1, "bit"    # I

    .prologue
    .line 586
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    .line 587
    return-object p0
.end method

.method private enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1
    .param p1, "bit"    # I

    .prologue
    .line 581
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    .line 582
    return-object p0
.end method


# virtual methods
.method public build()Landroid/os/StrictMode$ThreadPolicy;
    .locals 3

    .prologue
    .line 600
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    if-eqz v0, :cond_0

    .line 601
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    const/high16 v1, 0x270000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 603
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 605
    :cond_0
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    iget v1, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$ThreadPolicy;)V

    return-object v0
.end method

.method public detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 431
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 473
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectResourceMismatches()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 506
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 541
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyDeathOnNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 553
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyDialog()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 528
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyDropBox()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 577
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyFlashScreen()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 560
    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 567
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 438
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public permitCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 480
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public permitResourceMismatches()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 488
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method
