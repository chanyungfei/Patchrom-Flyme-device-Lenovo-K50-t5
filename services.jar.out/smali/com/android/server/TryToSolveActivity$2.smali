.class Lcom/android/server/TryToSolveActivity$2;
.super Ljava/lang/Object;
.source "TryToSolveActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TryToSolveActivity;->setupListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TryToSolveActivity;


# direct methods
.method constructor <init>(Lcom/android/server/TryToSolveActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TryToSolveActivity;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/TryToSolveActivity$2;->this$0:Lcom/android/server/TryToSolveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TryToSolveActivity$2;->this$0:Lcom/android/server/TryToSolveActivity;

    invoke-static {v1}, Lcom/android/server/TryToSolveActivity;->-get0(Lcom/android/server/TryToSolveActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TryToSolveActivity$ListItem;

    invoke-virtual {v1}, Lcom/android/server/TryToSolveActivity$ListItem;->onClick()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/android/server/TryToSolveActivity$2;->this$0:Lcom/android/server/TryToSolveActivity;

    invoke-virtual {v1}, Lcom/android/server/TryToSolveActivity;->finish()V

    .line 124
    return-void

    .line 127
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
