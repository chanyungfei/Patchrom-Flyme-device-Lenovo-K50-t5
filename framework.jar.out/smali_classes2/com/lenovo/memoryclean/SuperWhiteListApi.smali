.class public Lcom/lenovo/memoryclean/SuperWhiteListApi;
.super Ljava/lang/Object;
.source "SuperWhiteListApi.java"


# static fields
.field private static mSuperWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRamSizeGB:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lenovo/memoryclean/SuperWhiteListApi;->mSuperWhiteList:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/lenovo/memoryclean/SuperWhiteListApi;->mRamSizeGB:F

    .line 19
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/lenovo/memoryclean/RamSize;->getRamSizeGB()F

    move-result v0

    iput v0, p0, Lcom/lenovo/memoryclean/SuperWhiteListApi;->mRamSizeGB:F

    .line 22
    iget v0, p0, Lcom/lenovo/memoryclean/SuperWhiteListApi;->mRamSizeGB:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 23
    sget-object v0, Lcom/lenovo/memoryclean/SuperWhiteListApi;->mSuperWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.lenovo.ideafriend"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/lenovo/memoryclean/SuperWhiteListApi;->mSuperWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.providers.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/lenovo/memoryclean/SuperWhiteListApi;->mSuperWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.providers.applications"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/lenovo/memoryclean/SuperWhiteListApi;->mSuperWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.providers.userdictionary"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_0
    return-void
.end method

.method public isInSuperWhiteList(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/lenovo/memoryclean/SuperWhiteListApi;->mSuperWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInSuperWhiteProcess(Ljava/lang/String;Ljava/util/HashSet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "android.process.acore"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return v2

    :cond_0
    const-string/jumbo v0, "com.lenovo.ideafriend"

    .line 36
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 36
    :cond_2
    sget-object v0, Lcom/lenovo/memoryclean/SuperWhiteListApi;->mSuperWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.lenovo.ideafriend"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0
.end method
