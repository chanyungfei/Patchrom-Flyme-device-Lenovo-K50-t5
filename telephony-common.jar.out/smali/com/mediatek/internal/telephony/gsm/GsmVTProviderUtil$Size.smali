.class public Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;
.super Ljava/lang/Object;
.source "GsmVTProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->width:I

    .line 85
    iput p2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->height:I

    .line 83
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 97
    instance-of v2, p1, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;

    if-nez v2, :cond_0

    .line 98
    return v1

    :cond_0
    move-object v0, p1

    .line 100
    check-cast v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;

    .line 101
    .local v0, "s":Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;
    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->width:I

    iget v3, v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->width:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->height:I

    iget v3, v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->height:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->height:I

    add-int/2addr v0, v1

    return v0
.end method
