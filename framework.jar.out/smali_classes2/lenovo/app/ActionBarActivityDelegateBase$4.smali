.class Llenovo/app/ActionBarActivityDelegateBase$4;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/app/ActionBarActivityDelegateBase;->startSupportActionModeFromWindow(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/app/ActionBarActivityDelegateBase;


# direct methods
.method constructor <init>(Llenovo/app/ActionBarActivityDelegateBase;)V
    .locals 0
    .param p1, "this$0"    # Llenovo/app/ActionBarActivityDelegateBase;

    .prologue
    .line 630
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegateBase$4;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 632
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegateBase$4;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget-object v0, v0, Llenovo/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 633
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegateBase$4;->this$0:Llenovo/app/ActionBarActivityDelegateBase;

    iget-object v1, v1, Llenovo/app/ActionBarActivityDelegateBase;->mActionModeView:Lcom/lenovo/internal/widget/ActionBarContextView;

    .line 634
    const/16 v2, 0x37

    .line 632
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 631
    return-void
.end method
