.class Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DispatchDownTouchEventRunnable"
.end annotation


# instance fields
.field public mEvent:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/lenovo/settings/dslv/DragSortListView;


# direct methods
.method private constructor <init>(Lcom/lenovo/settings/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 3066
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/settings/dslv/DragSortListView;Lcom/lenovo/settings/dslv/DragSortListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p2, "x1"    # Lcom/lenovo/settings/dslv/DragSortListView$1;

    .prologue
    .line 3066
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3072
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;->this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;->mEvent:Landroid/view/MotionEvent;

    # invokes: Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->access$3101(Lcom/lenovo/settings/dslv/DragSortListView;Landroid/view/MotionEvent;)Z

    .line 3073
    return-void
.end method
