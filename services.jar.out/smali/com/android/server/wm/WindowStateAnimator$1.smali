.class Lcom/android/server/wm/WindowStateAnimator$1;
.super Landroid/os/AsyncTask;
.source "WindowStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowStateAnimator;->createSurfaceLocked()Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowStateAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator$1;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "para"    # [Ljava/lang/Object;

    .prologue
    .line 1026
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "para":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "para"    # [Ljava/lang/Void;

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$1;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->drawIfNeeded()V

    .line 1030
    const/4 v0, 0x0

    return-object v0
.end method
