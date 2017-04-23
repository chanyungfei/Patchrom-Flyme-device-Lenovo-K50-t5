.class Lcom/android/internal/policy/PhoneWindow$6;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow;->prepareFloatDecor(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 5428
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$6;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 5432
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$6;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$6;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->-get18(Lcom/android/internal/policy/PhoneWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->-wrap7(Lcom/android/internal/policy/PhoneWindow;Z)V

    .line 5433
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$6;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAppToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$6;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get18(Lcom/android/internal/policy/PhoneWindow;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/multiwindow/MultiWindowProxy;->stickWindow(Landroid/os/IBinder;Z)V

    .line 5430
    return-void

    .line 5432
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
