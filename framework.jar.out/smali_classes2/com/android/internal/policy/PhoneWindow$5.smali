.class Lcom/android/internal/policy/PhoneWindow$5;
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
    .line 5416
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$5;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 5419
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$5;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAppToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/multiwindow/MultiWindowProxy;->restoreWindow(Landroid/os/IBinder;Z)V

    .line 5418
    return-void
.end method
