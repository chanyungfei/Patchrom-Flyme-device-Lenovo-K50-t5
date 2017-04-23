.class Llenovo/widget/DrawerLayout$ViewDragCallback$1;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/DrawerLayout$ViewDragCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llenovo/widget/DrawerLayout$ViewDragCallback;


# direct methods
.method constructor <init>(Llenovo/widget/DrawerLayout$ViewDragCallback;)V
    .locals 0
    .param p1, "this$1"    # Llenovo/widget/DrawerLayout$ViewDragCallback;

    .prologue
    .line 1586
    iput-object p1, p0, Llenovo/widget/DrawerLayout$ViewDragCallback$1;->this$1:Llenovo/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1588
    iget-object v0, p0, Llenovo/widget/DrawerLayout$ViewDragCallback$1;->this$1:Llenovo/widget/DrawerLayout$ViewDragCallback;

    invoke-static {v0}, Llenovo/widget/DrawerLayout$ViewDragCallback;->-wrap0(Llenovo/widget/DrawerLayout$ViewDragCallback;)V

    .line 1587
    return-void
.end method
