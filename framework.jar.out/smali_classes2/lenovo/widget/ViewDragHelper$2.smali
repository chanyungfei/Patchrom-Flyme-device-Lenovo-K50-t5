.class Llenovo/widget/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/ViewDragHelper;


# direct methods
.method constructor <init>(Llenovo/widget/ViewDragHelper;)V
    .locals 0
    .param p1, "this$0"    # Llenovo/widget/ViewDragHelper;

    .prologue
    .line 331
    iput-object p1, p0, Llenovo/widget/ViewDragHelper$2;->this$0:Llenovo/widget/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Llenovo/widget/ViewDragHelper$2;->this$0:Llenovo/widget/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llenovo/widget/ViewDragHelper;->setDragState(I)V

    .line 332
    return-void
.end method
