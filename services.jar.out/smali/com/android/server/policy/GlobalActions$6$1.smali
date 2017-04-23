.class Lcom/android/server/policy/GlobalActions$6$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$6;->onToggle(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$6;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/GlobalActions$6;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$6$1;->this$1:Lcom/android/server/policy/GlobalActions$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$6$1;->this$1:Lcom/android/server/policy/GlobalActions$6;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get1(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 288
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$6$1;->this$1:Lcom/android/server/policy/GlobalActions$6;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->-wrap0(Lcom/android/server/policy/GlobalActions;Z)V

    .line 286
    return-void
.end method
