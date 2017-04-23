.class public final enum Lcom/mediatek/telecom/FormattedLog$OpType;
.super Ljava/lang/Enum;
.source "FormattedLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telecom/FormattedLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/telecom/FormattedLog$OpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/telecom/FormattedLog$OpType;

.field public static final enum DUMP:Lcom/mediatek/telecom/FormattedLog$OpType;

.field public static final enum NOTIFY:Lcom/mediatek/telecom/FormattedLog$OpType;

.field public static final enum OPERATION:Lcom/mediatek/telecom/FormattedLog$OpType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/mediatek/telecom/FormattedLog$OpType;

    const-string/jumbo v1, "OPERATION"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/telecom/FormattedLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/telecom/FormattedLog$OpType;->OPERATION:Lcom/mediatek/telecom/FormattedLog$OpType;

    new-instance v0, Lcom/mediatek/telecom/FormattedLog$OpType;

    const-string/jumbo v1, "NOTIFY"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/telecom/FormattedLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/telecom/FormattedLog$OpType;->NOTIFY:Lcom/mediatek/telecom/FormattedLog$OpType;

    new-instance v0, Lcom/mediatek/telecom/FormattedLog$OpType;

    const-string/jumbo v1, "DUMP"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/telecom/FormattedLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/telecom/FormattedLog$OpType;->DUMP:Lcom/mediatek/telecom/FormattedLog$OpType;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mediatek/telecom/FormattedLog$OpType;

    sget-object v1, Lcom/mediatek/telecom/FormattedLog$OpType;->OPERATION:Lcom/mediatek/telecom/FormattedLog$OpType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/telecom/FormattedLog$OpType;->NOTIFY:Lcom/mediatek/telecom/FormattedLog$OpType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/telecom/FormattedLog$OpType;->DUMP:Lcom/mediatek/telecom/FormattedLog$OpType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/telecom/FormattedLog$OpType;->$VALUES:[Lcom/mediatek/telecom/FormattedLog$OpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$OpType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/mediatek/telecom/FormattedLog$OpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telecom/FormattedLog$OpType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/telecom/FormattedLog$OpType;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/mediatek/telecom/FormattedLog$OpType;->$VALUES:[Lcom/mediatek/telecom/FormattedLog$OpType;

    return-object v0
.end method
