.class public Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;
.super Ljava/lang/Object;
.source "MdIratInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;
    }
.end annotation


# instance fields
.field public action:I

.field public sourceRat:I

.field public targetRat:I

.field public type:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->sourceRat:I

    .line 87
    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->targetRat:I

    .line 88
    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->action:I

    .line 89
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->type:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    .line 7
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "MdIratInfo: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "sourceRat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->sourceRat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 95
    const-string/jumbo v2, " targetRat="

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 95
    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->targetRat:I

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 95
    const-string/jumbo v2, " action="

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 96
    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->action:I

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 96
    const-string/jumbo v2, " type="

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->type:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 97
    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
