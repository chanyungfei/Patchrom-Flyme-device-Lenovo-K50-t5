.class Lcom/lenovo/internal/widget/AbsActionBarView$1;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/internal/widget/AbsActionBarView;->postShowOverflowMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/widget/AbsActionBarView;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/widget/AbsActionBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lenovo/internal/widget/AbsActionBarView;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/lenovo/internal/widget/AbsActionBarView$1;->this$0:Lcom/lenovo/internal/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lenovo/internal/widget/AbsActionBarView$1;->this$0:Lcom/lenovo/internal/widget/AbsActionBarView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/AbsActionBarView;->showOverflowMenu()Z

    .line 213
    return-void
.end method
