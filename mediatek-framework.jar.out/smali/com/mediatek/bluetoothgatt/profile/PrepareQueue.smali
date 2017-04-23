.class public Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;
.super Ljava/lang/Object;
.source "PrepareQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;
    }
.end annotation


# instance fields
.field mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;->mEntries:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;->mEntries:Ljava/util/List;

    .line 66
    return-void
.end method


# virtual methods
.method addPrepareWrite(Ljava/lang/Object;I[BZ)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "offset"    # I
    .param p3, "value"    # [B
    .param p4, "isDescriptor"    # Z

    .prologue
    .line 75
    iget-object v6, p0, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;->mEntries:Ljava/util/List;

    new-instance v0, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;-><init>(Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;Ljava/lang/Object;I[BZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    return-void
.end method

.method getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/bluetoothgatt/profile/PrepareQueue$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/PrepareQueue;->mEntries:Ljava/util/List;

    return-object v0
.end method
