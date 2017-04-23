.class Lcom/mediatek/widget/ImageViewEx$Bound;
.super Ljava/lang/Object;
.source "ImageViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/ImageViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bound"
.end annotation


# instance fields
.field private mHeight:I

.field private mWidth:I

.field final synthetic this$0:Lcom/mediatek/widget/ImageViewEx;


# direct methods
.method static synthetic -get0(Lcom/mediatek/widget/ImageViewEx$Bound;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/widget/ImageViewEx$Bound;->mHeight:I

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/widget/ImageViewEx$Bound;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/widget/ImageViewEx$Bound;->mWidth:I

    return v0
.end method

.method static synthetic -set0(Lcom/mediatek/widget/ImageViewEx$Bound;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/widget/ImageViewEx$Bound;->mHeight:I

    return p1
.end method

.method static synthetic -set1(Lcom/mediatek/widget/ImageViewEx$Bound;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/widget/ImageViewEx$Bound;->mWidth:I

    return p1
.end method

.method private constructor <init>(Lcom/mediatek/widget/ImageViewEx;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/widget/ImageViewEx;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/mediatek/widget/ImageViewEx$Bound;->this$0:Lcom/mediatek/widget/ImageViewEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/widget/ImageViewEx;Lcom/mediatek/widget/ImageViewEx$Bound;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/widget/ImageViewEx;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/widget/ImageViewEx$Bound;-><init>(Lcom/mediatek/widget/ImageViewEx;)V

    return-void
.end method
