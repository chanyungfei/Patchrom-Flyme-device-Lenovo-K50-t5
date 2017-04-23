.class public Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;
.super Ljava/lang/Object;
.source "PerfServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/perfservice/PerfServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerfServiceAppState"
.end annotation


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mPackName:Ljava/lang/String;

.field private mPid:I

.field private mState:I

.field final synthetic this$0:Lcom/mediatek/perfservice/PerfServiceManager;


# direct methods
.method static synthetic -get0(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mPackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mPid:I

    return v0
.end method

.method static synthetic -get3(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mState:I

    return v0
.end method

.method constructor <init>(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/perfservice/PerfServiceManager;
    .param p2, "packName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "state"    # I
    .param p5, "pid"    # I

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mPackName:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mClassName:Ljava/lang/String;

    .line 106
    iput p4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mState:I

    .line 107
    iput p5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mPid:I

    .line 103
    return-void
.end method
