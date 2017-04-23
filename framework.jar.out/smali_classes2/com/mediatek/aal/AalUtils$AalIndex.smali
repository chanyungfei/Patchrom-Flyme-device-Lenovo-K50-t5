.class Lcom/mediatek/aal/AalUtils$AalIndex;
.super Ljava/lang/Object;
.source "AalUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/aal/AalUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AalIndex"
.end annotation


# instance fields
.field private mMode:I

.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/aal/AalUtils;


# direct methods
.method constructor <init>(Lcom/mediatek/aal/AalUtils;)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/aal/AalUtils;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/mediatek/aal/AalUtils$AalIndex;->this$0:Lcom/mediatek/aal/AalUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    invoke-static {p1}, Lcom/mediatek/aal/AalUtils;->-get0(Lcom/mediatek/aal/AalUtils;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/aal/AalUtils$AalIndex;->set(ILjava/lang/String;)V

    .line 506
    return-void
.end method

.method constructor <init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/aal/AalUtils;
    .param p2, "mode"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/mediatek/aal/AalUtils$AalIndex;->this$0:Lcom/mediatek/aal/AalUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    invoke-direct {p0, p2, p3}, Lcom/mediatek/aal/AalUtils$AalIndex;->set(ILjava/lang/String;)V

    .line 510
    return-void
.end method

.method private set(ILjava/lang/String;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 515
    iput p1, p0, Lcom/mediatek/aal/AalUtils$AalIndex;->mMode:I

    .line 516
    iput-object p2, p0, Lcom/mediatek/aal/AalUtils$AalIndex;->mPackageName:Ljava/lang/String;

    .line 514
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 534
    invoke-static {}, Lcom/mediatek/aal/AalUtils;->-get1()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 535
    const-string/jumbo v3, "AalUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 536
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 535
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    if-nez p1, :cond_1

    .line 540
    return v2

    .line 542
    :cond_1
    if-ne p1, p0, :cond_2

    .line 543
    return v1

    .line 545
    :cond_2
    instance-of v3, p1, Lcom/mediatek/aal/AalUtils$AalIndex;

    if-nez v3, :cond_3

    .line 546
    return v2

    :cond_3
    move-object v0, p1

    .line 549
    check-cast v0, Lcom/mediatek/aal/AalUtils$AalIndex;

    .line 550
    .local v0, "index":Lcom/mediatek/aal/AalUtils$AalIndex;
    invoke-static {}, Lcom/mediatek/aal/AalUtils;->-get1()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 551
    const-string/jumbo v3, "AalUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_4
    iget-object v3, p0, Lcom/mediatek/aal/AalUtils$AalIndex;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/mediatek/aal/AalUtils$AalIndex;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 554
    iget v3, p0, Lcom/mediatek/aal/AalUtils$AalIndex;->mMode:I

    iget v4, v0, Lcom/mediatek/aal/AalUtils$AalIndex;->mMode:I

    if-ne v3, v4, :cond_5

    :goto_0
    return v1

    :cond_5
    move v1, v2

    goto :goto_0

    .line 556
    :cond_6
    iget v1, p0, Lcom/mediatek/aal/AalUtils$AalIndex;->mMode:I

    iget v3, v0, Lcom/mediatek/aal/AalUtils$AalIndex;->mMode:I

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/mediatek/aal/AalUtils$AalIndex;->mPackageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/mediatek/aal/AalUtils$AalIndex;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_7
    return v2
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/mediatek/aal/AalUtils$AalIndex;->mMode:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils$AalIndex;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mediatek/aal/AalUtils$AalIndex;->mMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "hashString":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/aal/AalUtils$AalIndex;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/aal/AalUtils$AalIndex;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    :cond_0
    invoke-static {}, Lcom/mediatek/aal/AalUtils;->-get1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    const-string/jumbo v1, "AalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " hashCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/aal/AalUtils$AalIndex;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/aal/AalUtils$AalIndex;->this$0:Lcom/mediatek/aal/AalUtils;

    iget v2, p0, Lcom/mediatek/aal/AalUtils$AalIndex;->mMode:I

    invoke-static {v1, v2}, Lcom/mediatek/aal/AalUtils;->-wrap0(Lcom/mediatek/aal/AalUtils;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/aal/AalUtils$AalIndex;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
