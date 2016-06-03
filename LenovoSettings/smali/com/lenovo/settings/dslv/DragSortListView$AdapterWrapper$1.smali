.class Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

.field final synthetic val$this$0:Lcom/lenovo/settings/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;Lcom/lenovo/settings/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

    iput-object p2, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper$1;->val$this$0:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->notifyDataSetChanged()V

    .line 627
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->notifyDataSetInvalidated()V

    .line 632
    return-void
.end method
